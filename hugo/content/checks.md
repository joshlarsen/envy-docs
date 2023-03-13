+++
title = "Checks"
+++

Envy checks for the following `.env` file best practices and required items.

# Checks

1. [Duplicate key](#c1-duplicate-key)
2. [Invalid delimiter in key](#c2-invalid-delimiter-in-key)
3. [Key without value](#c3-key-without-value)
4. [Key is not sorted](#c4-key-is-not-sorted)
5. [Key has an invalid first character (prefix)](#c5-key-has-an-invalid-first-character)
6. [Key is not valid](#c6-valid-key)
7. [Value has unnecessary quotes](#c7-unnecessary-quotes)
8. [Extra spacing around separator](#c8-extra-spacing-around-separator)
9. [Value uses substitution without proper quoting](#c9-substitution-without-proper-quoting)
10. [Value has leading or trailing whitespace](#c10-leading-or-trailing-whitespace)
11. [Value contains whitespace without proper quoting](#c11-whitespace-without-proper-quoting)
12. [Last line is blank](#c12-no-empty-last-line)
13. [Multiple successive blank lines](#c13-multiple-successive-blank-lines)
14. [Value is missing proper quoting](#c14-value-is-missing-proper-quoting)
15. [Line does not have a valid separator](#c15-line-does-not-have-a-valid-separator)

#### c1. Duplicate Key

Checks that the key is not repeated.

- :white_check_mark: `KEY1=value1`
- :x: `KEY1=value2`
- :x: `KEY1=value3`

#### c2. Invalid delimiter in key

Checks that only underscores are used to separate words in the key.

- :white_check_mark: `KEY_1=value1`
- :x: `KEY-1=value1`

#### c3. Key without value

Checks that the key has a value. A valid value must be a non-empty string.

- :white_check_mark: `KEY=value`
- :x: `KEY=`

#### c4. Key is not sorted

Checks that keys art sorted lexicographically.

- :white_check_mark: `KEYB=value2`
- :white_check_mark: `KEYC=value3`
- :white_check_mark: `KEYD=value4`
- :x: `KEYA=value1`

#### c5. Key has an invalid first character

Checks that the first character of the key is valid. A valid key prefix must be a capital letter or a number.

- :white_check_mark: `MY_KEY=value`
- :x: `mY_KEY=value`

#### c6. Valid Key

Checks that the key is valid. A valid key should consist of only capital letters, numbers, and underscores.

- :white_check_mark: `MY_KEY1=value1`
- :x: `my-key-1=value1`

#### c7. Unnecessary quotes

Checks that the value isn't quoted unnecessarily.

- :white_check_mark: `KEY="quote this"`
- :x: `KEY="noquotes"`

#### c8. Extra spacing around separator

Checks that there are no spaces around the separator.

- :white_check_mark: `KEY=value`
- :x: `KEY = value`
- :x: `KEY= value`
- :x: `KEY =value`

#### c9. Substitution without proper quoting

Checks that the value uses proper quoting around substitutions.

- :white_check_mark: `KEY="some ${FOO} value"`
- :x: `KEY=some $FOO value`

#### c10. Leading or trailing whitespace

Checks that the value does't have leading or trailing whitespace

- :white_check_mark: `KEY=value`
- :x: `KEY= value`
- :x: `KEY= value `
- :x: `KEY=value `

#### c11. Whitespace without proper quoting

Checks that the value doesn't contain whitespace without proper quoting

- :white_check_mark: `KEY="value with spaces"`
- :x: `KEY=value with spaces`
- :x: `KEY=value with new\nlines`

#### c12. No empty last line

Checks that the last line of an `.env` file is not empty.

- :white_check_mark:

  ```bash
  KEY1=value1
  KEY2=value2
  ```

- :x:

  ```bash
  KEY1=value1
  KEY2=value2
   
  ```

#### c13. Multiple successive blank lines

Checks that blank lines are not repeated.

- :white_check_mark:

  ```bash
  KEY1=value1

  KEY2=value2
  ```

- :x:

  ```bash
  KEY1=value1


  KEY2=value2 
  ```

#### c14. Value is missing proper quoting

Checks that values containing an equals sign are properly quoted.

- :white_check_mark: `KEY="setting=true"`
- :x: `KEY=setting=true`

#### c15. Line does not have a valid separator

Checks that the line contains an equals sign separator.

- :white_check_mark: `KEY=value`
- :x: `KEY=>value`
