# Libraries++ Documentation
Welcome to the Libraries++ documentation! In this page you will find all the documentation for the functions included in this module.

## string
Many of the functions here are implementations of Python functions for those Python fanatics. Inspiration taken from other languages too.

### `capitalize(str: string): string`
Returns `str` with the first letter capitalized. Inspired by Python's `str.capitalize()`

Example use:

```
string.capitalize("john is cool") --> "John is cool"
```

### `isalnum(str: string): boolean`
Returns a boolean that indicates if `str` is entirely alphanumeric. Inspired by Python's `str.isalnum()`

Example use:

```
string.isalnum("abc123") --> true
```

### `isalpha(str: string): boolean`
Returns a boolean that indicates if `str` is entirely alphabetical. Inspired by Python's `str.isalpha()`

Example use:

```
string.isalpha("abc") --> true
string.isalpha("hello world") --> false
```

### `iswhitespace(str: string): boolean`
Returns a boolean that indicates if `str` is entirely whitespace. Useful for when taking input and don't want space-only text. Inspired by Python's `str.isspace()`

Example use:

```
string.iswhitespace(" ") --> true
string.iswhitespace("    ") --> true
string.iswhitespace("") --> false
```

### `join(delimiter: string, iterable: string | { string | number }): string`
If `iterable` is an array of `strings | numbers`, then functions exactly like `table.concat`. If `iterable` is a string, then delimits each character with the provided `delimiter`. Inspired by Python's `str.join()`

Example use:

```
string.join("", { "a", "b", "c" }) --> "abc"
string.join("|", "xyz") --> "x|y|z"
```

### `strip(str: string, chars: string?): string`
Strips any leading and trailing whitespace from `str`, and optionally strips `str` of any characters in `chars`. The latter is optional, so if not provided the function will just strip leading and trailing whitespace.

Example use:

```
string.strip("    apple ") --> "apple"
string.strip("    dogs are cute  ", "dc") -- "ogs are ute"
```

### `title(str: string): string`
Returns a title-cased version of `str`.

Example use:

```
string.title("hello world foo bar") --> "Hello World Foo Bar"
string.title("_hello world") --> "_hello World"
```

### `zfill(str: string, goal: number): string`
Prepends zeroes to `str` until the length of the new string == `goal`. If `goal <= #str` no filling will be done.
Only caveat is that no sign check is done. Maybe in the future this will be supported.

Example use:

```
string.zfill("Hello", 10) --> "00000Hello"
string.zfill("+500", 5) --> "0+500"
```
