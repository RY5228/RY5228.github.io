# Repository Guidelines

## Project Structure & Module Organization

This repository is an Academic Pages / Jekyll site. Site-wide settings live in `_config.yml`, top navigation lives in `_data/navigation.yml`, and main pages live in `_pages/`. The homepage is `_pages/about.md`, with the English version at `_pages/en.md`. Theme templates are under `_layouts/` and `_includes/`, Sass lives in `_sass/`, and compiled/static theme assets live in `assets/`. Public images belong in `images/`, including `images/ren-yi-profile.jpg`.

## Build, Test, and Development Commands

- `bundle install`: install Ruby/Jekyll dependencies from `Gemfile`.
- `bundle exec jekyll serve -l -H localhost`: preview locally at `http://localhost:4000`.
- `bundle exec jekyll build`: build the static site into `_site/`.

Use the Bundler-prefixed commands so local dependency versions match the site.

## Coding Style & Naming Conventions

Use Markdown with YAML front matter for pages. Keep page filenames lowercase and hyphenated when adding new content, such as `_pages/research.md` or `_publications/my-paper.md`. Use two-space indentation in YAML files. Keep reusable files in `files/` and public images in `images/`; avoid placing generated output in source directories.

## Testing Guidelines

There is no automated test suite. Validate structural changes with `bundle exec jekyll build`. For content, navigation, or layout changes, also run the local server and manually check the affected pages, sidebar profile, links, images, and language navigation.

## Commit & Pull Request Guidelines

Use short, imperative commit messages, such as `Update homepage biography` or `Add publication page`. Commit after completing each editing milestone so progress is easy to review or roll back. Pull requests should summarize content and template changes, note any `_config.yml` or workflow updates, link related issues when available, and include screenshots for visible layout changes.
