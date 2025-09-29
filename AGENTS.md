# Repository Guidelines

## Project Structure & Module Organization
The Jekyll site lives at the repository root. Content collections such as `_pages`, `_posts`, `_portfolio`, `_publications`, `_talks`, and `_teaching` hold page markdown with YAML front matter. Theme assets stay under `_includes`, `_layouts`, and `_sass`, while `assets/` contains JS and compiled CSS, and `images/` and `files/` store media downloads. Utilities in `markdown_generator/` and `scripts/` automate CV and publication updates.

## Build, Test, and Development Commands
- `bundle install`: install Ruby gem dependencies.
- `bundle exec jekyll serve -l -H localhost`: run the local server with live reload at `http://localhost:4000`.
- `bundle exec jekyll build`: generate the production-ready `_site` output to validate builds.
- `npm run build:js`: minify JavaScript after editing `assets/js/_main.js` or plugin files.
- `docker compose up`: start the containerized environment defined in `docker-compose.yaml`.

## Coding Style & Naming Conventions
Author markdown with YAML front matter bounded by `---`, using lowercase keys and hyphenated filenames like `2024-04-15-talk.md`. Indent Liquid templates and SCSS with two spaces, and prefer descriptive include names (`_includes/section-experience.html`). JavaScript in `assets/js/` should stay ES5-compatible; keep helper functions pure and run the minification script before committing.

## Testing Guidelines
Run `bundle exec jekyll build` before every push to surface Liquid or front matter errors. Review the generated `_site` or the live preview to confirm navigation, images, and metadata render correctly. When JavaScript changes, open the DevTools console during `jekyll serve` and verify no errors. For data-driven updates from `markdown_generator/` or `scripts/`, compare outputs against the source TSV/JSON.

## Commit & Pull Request Guidelines
Use concise, imperative commit messages (e.g., `Add old website source`) and squash noisy fixup commits. Pull requests should summarize scope, link issues when relevant, and include before/after screenshots or preview URLs for visual tweaks. Mention any manual scripts or data refresh steps required so reviewers can reproduce the change.
