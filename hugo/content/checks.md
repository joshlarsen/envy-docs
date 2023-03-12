+++
title = "Checks"
+++

Envy checks for the following `.env` file best practices and required items.

# Checks

- [Valid key](#c1-valid-key)
- [Valid value](#c2-valid-value)
- [Valid key prefix](#c3-valid-key-prefix)
- [No empty value](#c4-no-empty-value)

> Uh oh, this is a note
> this is a thing

#### c1. Valid Key

Checks that the key is valid. A valid key should consiste of only capital letters, numbers, and underscores.

- :white_check_mark: `MY_KEY=value`
- :x: `my-key=value`

#### c2. Valid value

Checks that they value is valid. A valid value must be a non-empty string.

- :white_check_mark: `MY_KEY=value`
- :x: `MY_KEY=`

#### c3. Valid key prefix

Checks that the first character of the key is valid. A valid key prefix must be a capital letter or a number.

- :white_check_mark: `MY_KEY=value`
- :x: `mY_KEY=value`

#### c4. No empty value

Checks that the value is not an empty string.

- :white_check_mark: `MY_KEY=value`
- :x: `MY_KEY=`

#### c15. No empty last line

Checks that the last line of an `.env` file is not empty.

:white_check_mark:

```bash
MY_KEY=value1
OTHER=value2
```

:x:

```bash
MY_KEY=value1
OTHER=value2

```
