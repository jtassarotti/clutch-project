# clutch-project-site

Website for the [Clutch project](https://github.com/logsem/clutch). Templated on [iris-project.org](https://iris-project.org/).

## Building locally

Requires Ruby with `bundler`.

```bash
bundle config set --local path '.bundle'
bundle install
bundle exec jekyll serve
```

Then open <http://127.0.0.1:4000>.

If `jekyll serve` has trouble with newer Rubies, build and serve with Python:

```bash
bundle exec jekyll build && (cd _site && python3 -m http.server 3000)
```

## Running with Docker

Alternately, use Docker (and Docker Compose). Run

```bash
docker compose up --build
```

to build and run the container, then navigate to <http://localhost:4000>.

## Adding a publication

Edit `_data/publications.json`. The schema matches iris-project.org: each entry has
`title`, `authors`, `where_published`, optional `pdf_url`, optional
`other_urls` (a list of `{name, url}`), and optional `awards`.

PDFs go under `pdfs/`.

## TODO

- Add a Clutch logo (placeholder text title used in `index.html` for now)
- Add a "Learning" / resources section if/when introductory material exists
- Add additional research groups / contacts as appropriate
