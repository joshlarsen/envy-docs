+++
title = "Usage"
+++

How to install and use **envy**.

## Setup

Install **envy**.

```bash
go get github.com/envy-lint/envy
```

## Usage

You can run **envy** several ways.

#### Default

By default, `envy` will look for a `.env` file in the current directory.

```bash
envy
```

## Specify file

Specify a file with the `-f` flag.

```bash
envy -f sample.env
```

## Stdin

Pipe output to **envy**.

```bash
echo sample.env | envy
```
