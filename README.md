# Expect

An expect-style testing library.

```v
module test

import khalyomede.expect { expect }

fn test_checks_string_start_word() {
  expect("Hello world").to_not_start_with("Hey")
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

- Assertions
  - [to_be_between](#to_be_between)
  - [to_be_different_from](#to_be_different_from)
  - [to_be_equal_to](#to_be_equal_to)
  - [to_be_false](#to_be_false)
  - [to_be_true](#to_be_true)
  - [to_contain](#to_contain)
  - [to_not_contain](#to_not_contain)
  - [to_not_start_with](#to_not_start_with)
  - [to_start_with](#to_start_with)
- [Chaining multiple checks](#chaining-multiple-checks)

### to_be_between

```v
module test

import khalyomede.expect { expect }

fn test_it_checks_int_between_two_int() {
  expect(42).to_be_between(41, 43)
}
```

[Back to examples](#examples)

### to_be_different_from

```v
module test

import khalyomede.expect { expect }

fn test_it_checks_value_difference() {
  expect("hello world").to_be_different_from("hi world")
}
```

Reverse: [to_be_equal_to](#to_be_equal_to)

[Back to examples](#examples)

### to_be_equal_to

```v
module test

import khalyomede.expect { expect }

fn test_it_checks_value_equality() {
  expect("hello world").to_be_equal_to("hello world")
}
```

Reverse: [to_be_different_from](#to_be_different_from)

[Back to examples](#examples)

### to_be_false

```v
module test

import khalyomede.expect { expect }

fn test_it_checks_falsy_value() {
  expect(false).to_be_false()
}
```

Reverse: [to_be_true](#to_be_true)

[Back to examples](#examples)

### to_be_true

```v
module test

import khalyomede.expect { expect }

fn test_it_checks_truthy_value() {
  expect(true).to_be_true()
}
```

Reverse: [to_be_false](#to_be_false)

[Back to examples](#examples)

### to_contain

```v
module test

import khalyomede.expect { expect }

fn test_it_checks_int_is_int_array_of_int() {
  expect([1, 2, 3]).to_contain(2)
}
```

Reverse: [to_not_contain](#to_not_contain)

[Back to examples](#examples)

### to_not_contain

```v
module test

import khalyomede.expect { expect }

fn test_it_checks_int_is_int_array_of_int() {
  expect("hello world").to_not_contain("people")
}
```

Reverse: [to_contain](#to_contain)

[Back to examples](#examples)

### to_not_start_with

```v
module test

import khalyomede.expect { expect }

fn test_it_checks_string_doesnt_start_with_another() {
  expect("hello world").to_start_with("hey")
}
```

Reverse: [to_start_with](#to_start_with)

[Back to examples](#examples)

### to_start_with

```v
module test

import khalyomede.expect { expect }

fn test_it_checks_string_starts_with_another() {
  expect("hello world").to_start_with("hello")
}
```

Reverse: [to_not_start_with](#to_not_start_with)

[Back to examples](#examples)

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
