# Repository Guidelines

## Project Structure & Module Organization

This repository is a small Hugo static site. The root `hugo.yml` file defines site metadata, menu entries, build flags, and the Ananke theme configuration. Page content lives in `content/`; for example, `content/_index.md` is the home page and `content/about/index.md` is the About page. Public assets belong under `static/`, with images currently stored in `static/images/` and served as `/images/...`. Hugo archetypes for new content are defined in `archetypes/default.md`.

## Build, Test, and Development Commands

Hugo is required locally; it is not vendored in this repository.

- `hugo server -D`: run a local preview server and include draft content.
- `hugo`: build the static site using `hugo.yml`.
- `hugo new content/<section>/<name>.md`: create a new content page from the default archetype.

If `hugo` is unavailable, install Hugo before validating site changes.

## Coding Style & Naming Conventions

Use Markdown for content pages and keep front matter consistent with nearby files. Existing content uses YAML front matter in `content/`, while the default archetype uses TOML front matter; match the file you are editing unless intentionally standardizing it. Keep page and asset paths lowercase and hyphenated, such as `content/publications/my-paper.md`. Use two-space indentation in `hugo.yml`, preserve readable grouping for menu and theme settings, and store reusable public files in `static/` rather than `content/`.

## Testing Guidelines

There is no automated test framework or coverage requirement in this repository. Validate changes by running `hugo` and fixing any build errors. For visual or navigation changes, also run `hugo server -D` and manually check the affected pages, menu links, images, and draft behavior.

## Commit & Pull Request Guidelines

Recent commit messages are short and informal, but future commits should be imperative and descriptive, such as `Add about page content` or `Update site navigation`. Commit after completing each editing milestone so progress is easy to review or roll back. Pull requests should include a concise summary, note any changes to `hugo.yml`, link related issues when available, and include screenshots for visible page or asset updates.
