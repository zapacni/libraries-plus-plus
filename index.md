# Libraries++ Documentation
Welcome to the Libraries++ documentation! In this page you will find all the documentation for the functions included in this module.

## string
Many of the functions here are implementations of Python functions for those Python fanatics. Inspiration taken from other languages too.

### capitalize(str: string): string
Returns `str` with the first letter capitalized. Inspired by Python's `str.capitalize()`

Example use:

```lua
string.capitalize("john is cool") --> "John is cool"
```

### isalnum(str: string): boolean
Returns a boolean that indicates if `str` is entirely alphanumeric. Inspired by Python's `str.isalnum()`

Example use:

```lua
string.isalnum("abc123") --> true
```

### isalpha(str: string): boolean
Returns a boolean that indicates if `str` is entirely alphabetical. Inspired by Python's `str.isalpha()`

Example use:

```lua
string.isalpha("abc") --> true
string.isalpha("hello world") --> false
```

### iswhitespace(str: string): boolean
Returns a boolean that indicates if `str` is entirely whitespace. Useful for when taking input and don't want space-only text. Inspired by Python's `str.isspace()`

Example use:

```lua
string.iswhitespace(" ") --> true
string.iswhitespace("    ") --> true
string.iswhitespace("") --> false
```

### join(delimiter: string, iterable: string | { string | number }): string
If `iterable` is an array of `strings | numbers`, then functions exactly like `table.concat`. If `iterable` is a string, then delimits each character with the provided `delimiter`. Inspired by Python's `str.join()`

Example use:

```lua
string.join("", { "a", "b", "c" }) --> "abc"
string.join("|", "xyz") --> "x|y|z"
```

### strip(str: string, chars: string?): string
Strips any leading and trailing whitespace from `str`, and optionally strips `str` of any characters in `chars`. The latter is optional, so if not provided the function will just strip leading and trailing whitespace.

Example use:

```lua
string.strip("    apple ") --> "apple"
string.strip("    dogs are cute  ", "dc") -- "ogs are ute"
```

### title(str: string): string
Returns a title-cased version of `str`.

Example use:

```lua
string.title("hello world foo bar") --> "Hello World Foo Bar"
string.title("_hello world") --> "_hello World"
```

### zfill(str: string, goal: number): string
Prepends zeroes to `str` until the length of the new string == `goal`. If `goal <= #str` no filling will be done.
Only caveat is that no sign check is done. Maybe in the future this will be supported.

Example use:

```lua
string.zfill("Hello", 10) --> "00000Hello"
string.zfill("+500", 5) --> "0+500"
```

## table

### copy(tbl: { [number]: any }, deep: boolean?): { [number]: any }
Returns a copy of `tbl`. The `deep` argument is optional; if not provided the function will by default make a shallow copy.

Example use:

```lua
local tbl = { { } }
local shallow_tbl_copy = table.copy(tbl)
local deep_tbl_copy = table.copy(tbl, true)

shallow_tbl_copy[1] == tbl[1] --> true
deep_tbl_copy[1] == tbl[1] --> false
```

### getoccurrencesof(tbl: { [number]: any }, value: any): number
Returns the amount of times `value` is repeated in `tbl`.

Example usage:

```lua
table.getoccurrencesof({ "a", "b", "c", "a", "a" }, "a") --> 3
```

### isempty(tbl: { [any]: any }): boolean
Returns a boolean that indicates whether or not `tbl` is empty. This function can take a dictionary as well -- there is no point in making it only take an array.

Example usage:

```lua
table.isempty({ }) --> true
table.isempty({ 0, 1, 2 }) --> false
```

### reverse(tbl: { [number]: any }): { [number]: any }
Reverses `tbl` and returns it.

Example usage:

```lua
table.reverse({ 0, 1, 2 }) --> { 2, 1, 0 }
```

### shuffle(tbl: { [number]: any }): { [number]: any }
Shuffles the contents of `tbl` and returns `tbl` back shuffled.

Example usage:

```lua
table.shuffle({ "a", "b", "c", "d", "e", "f" }) --> { "d", "a", "c", "b", "f", "e" } (example result)
```

**Exceptions**
* This function will throw an exception if `#tbl < 2` since there is no point in shuffling a single-element table let alone an empty one.

### zip(...: { [number]: any })
I don't know how to represent a function type that returns a function that returns a variant amount of arguments.
This is essentially Python's `zip()`.

Example usage:

```lua
local t1 = { "a", "b", "c" }
local t2 = { 0, 1, 2 }
local t3 = { "x", "y", "z" }

for v1, v2, v3 in table.zip(t1, t2, t3) do
	print(v1, v2, v3)
end

-->
--[[
	"a" 0 "x"
	"b" 1 "y"
	"c" 2 "z"
]]--
```
