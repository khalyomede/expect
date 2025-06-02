# Expect

An expect-style testing library.

```v
module test

import khalyomede.expect { expect }

fn test_checks_values_are_equal() {
  expect(true).to_be_true()
}
```

## Summary

- [About](#about)
- [Features](#features)
- [Installation](#installation)
- [Examples](#examples)

## About

I created this library to use a more fluent, expressive way to write my tests.

I also wanted to ease the testing of advanced assertions, like testing a functions prints a message on the console.

## Features

- Provide an expressive "expect" testing style function
- Allow to chain assertions

## Installation

- [Using V installer](#using-v-installer)
- [Manual installation](#manual-installation)

### Using V installer

In your terminal, run this command:

```bash
v install khalyomede.expecr
```

[Back to installation](#installation)

### Manual installation

Locate your V modules folder. This is usually your user name followed by ".vmodules". For example, for the root user, the folder will be located at "/root/.vmodules".

Download the zip of this package in Github.

Then unzip and take the content of the first folder inside (usually the "expect-master" folder) in a folder named "khalyomede" inside a sub folder named "expect". Your folder tree must look like this:

```
root
└── .vmodules
  └── khalyomede
    └── expect
      ├── ...
      ├── expect.v
      ├── Expectation.v
      ├── README.md
      └── ...
```

[Back to installation](#installation)

## Examples

- [Check a value is true](#check-a-value-is-true)
- [Chaining multiple checks](#chaining-multiple-checks)

### Check a value is true

```v
module test

import khalyomede.expect { expect }

fn test_a_value_is_true() {
  expect(true).to_be_true()
}
```

### Chaining multiple checks

```v
module test

import khalyomede.expect { expect }

fn test_it_can_chain_multiple_checks() {
  expect(42)
    .to_be_equal_to(42)
    .to_be_different_from(43)
    // ...
}
```
