# Updating This Site

The sections below capture the files we updated while porting content from the legacy `old_html_website/` directory. Use this as a checklist whenever you refresh the site.

## Key Content Files
- `_config.yml` – Site-wide metadata (title, sidebar bio, contact info, production URL/baseurl).
- `_pages/index.md` – Home page narrative, hero image, selected publications, teaching highlights, contact note.
- `_data/navigation.yml` – Header links (currently Publications and Teaching; add `- title: "CV"` with `url: /#cv` to re-enable a top-level CV anchor).
- `_publications/*.md` – Individual paper entries with metadata, links to PDFs/arXiv/DOI, and short descriptions.
- `_teaching/*.md` – TA roles with venue, semester, and supporting notes.
- `images/ChrisSquare.jpg`, `images/chriscrop2.jpg` – Profile and homepage images.
- `files/ILG_Single_Column_Nov_8_2024.pdf`, `files/LEAP_ILG_Nov_8_2024.pdf`, `files/POPL_23.pdf` – Linked artifacts (paper/workshop copies).

## Quick Update Workflow
1. **Edit content locally**
   - Tweak `_config.yml` for new bio links or sidebar details.
   - Update `_pages/index.md` with fresh paragraphs, activities, and image references.
   - Add or modify `_publications/*.md` and `_teaching/*.md` entries; copy new PDFs into `files/`.
2. **Preview**
   ```bash
   bundle exec jekyll serve -l -H localhost --baseurl ''
   ```
   Inspect `http://localhost:4000` to ensure navigation, images, and publication links render.
3. **Deploy**
   ```bash
   scripts/deploy_public_html.sh
   ```
   The script rebuilds the site (`bundle exec jekyll build`) and `rsync`s `_site/` to `ccwatson@eniac.seas.upenn.edu:public_html/` (override with `REMOTE`/`REMOTE_PATH` if needed).
4. **Verify live**
   - Open `https://www.seas.upenn.edu/~ccwatson/` in a fresh browser session.
   - Spot-check publications, teaching pages, and downloads under `/files/`.

## Tips
- Keep `.gitignore` (now ignoring `.DS_Store`) intact to avoid committing macOS metadata.
- When adding new collections (talks, portfolio, etc.), mirror the pattern above: add Markdown entries under the relevant `_collection/` directory, adjust `_data/navigation.yml`, and link assets under `images/` or `files/`.
- Run `npm run build:js` if you ever edit JavaScript in `assets/js/` before deploying.
