# Gerrit User Summit 2026 — Site

Static site for the Gerrit User Summit 2026 (November 9-10, Sunnyvale CA).

This is a standalone Jekyll site, served at `gus26.gerritforge.com`.

## Prerequisites

Ruby and Bundler are required. Install dependencies once from the repo root:

```sh
gem install bundler
bundle install
```

## Build

```sh
bundle exec jekyll build
```

Output is written to `_site/`.

## Local preview

Build with relative paths so you can open the HTML files directly:

```sh
bundle exec jekyll build --config _config.yml,_config_local.yml
```

Then open `_site/index.html` directly in a browser.
