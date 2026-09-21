# Design Notes

## Goals

Keep the demo small enough to read in one sitting while still having
enough moving parts to exercise git: multiple directories, a build
script, tests, and docs.

## Naming

- Public functions live in `inc/` and use a plain snake_case name.
- Sources in `src/` include headers via `-Iinc`.
