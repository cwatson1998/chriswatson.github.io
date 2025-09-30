# Manual Deployment Guide

Follow these steps whenever you want to publish updates to `https://www.seas.upenn.edu/~ccwatson/`.

## 1. Prerequisites
- Ruby, Bundler, and Jekyll installed locally; run `bundle install` from the repo root once per environment.
- SSH access to `ccwatson@eniac.seas.upenn.edu` with write permission to `~/public_html/` (set up `ssh-agent` or be ready for password prompts).
- Optional: Node.js for updating JavaScript assets (`npm install` then `npm run build:js`).

## 2. Preview Locally (optional)
```bash
bundle exec jekyll serve -l -H localhost --baseurl ''
```
Visit `http://localhost:4000` to confirm changes render correctly. Stop the server with `Ctrl+C`.

## 3. Deploy to SEAS Hosting
```bash
scripts/deploy_public_html.sh
```
The script:
1. Builds the production site with `JEKYLL_ENV=production bundle exec jekyll build`.
2. Syncs the `_site/` output to `ccwatson@eniac.seas.upenn.edu:public_html/` using `rsync --delete` so removed files disappear from the server.

### Custom Targets
- Set `REMOTE` to deploy from a different workstation or jump host, e.g. `REMOTE=myuser@remote.seas.upenn.edu scripts/deploy_public_html.sh`.
- Set `REMOTE_PATH` when publishing into a subdirectory: `REMOTE_PATH=public_html/portfolio scripts/deploy_public_html.sh`.

## 4. Verify
1. Open `https://www.seas.upenn.edu/~ccwatson/` in a fresh browser window or private tab.
2. Check navigation, images, and downloads (especially under `/files/`) to ensure paths resolve with the configured `/~ccwatson` base URL.

## 5. Troubleshooting
- If the build fails, rerun `bundle install` and fix Liquid/YAML errors reported in the console.
- If assets look stale, delete `_site/` locally and rerun the deploy script.
- For authentication issues, ensure your SSH key is added with `ssh-add` or try logging in manually via `ssh ccwatson@eniac.seas.upenn.edu` to confirm access.
