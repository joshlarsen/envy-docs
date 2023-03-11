+++
title = "About"
+++

# Envy

Envy is a linter for `.env` files written in Go. It aims to be fast, accurate, and easy to use. It runs on Windows, Linux, and macOS.

Envy can help lint single `.env` files, lint entire directories of `.env` files, or be integrated into CI to lint build and deployment stage `.env` files.

Envy was inspired by the Rust `.env` linter [dotenv-linter](https://dotenv-linter.github.io/), with the aim to provide similar functionality, but from a tool written in Go.

Envy checks `.env` files for things like:

- duplicate keys
- unordered keys
- malformed keys
- malformed values
- incorrect casing
- incorrect spacing
- incorrect quoting

Read more about [usage](/usage) and [checks](/checks), or check out the [source](https://github.com/envy-lint/envy)
