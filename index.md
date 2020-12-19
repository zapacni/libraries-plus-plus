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

## math

### cbrt(num: number): number
Returns the cube root of `num` and accounts for the case where `num` may be negative.

Example use:

```lua
math.cbrt(64) --> 4
math.cbrt(-64) --> -4
```

### cosec(num: number): number
Returns the cosecant of `num`.

Example use:

```lua
math.cosec(5) --> -1.0428352127714
```

### cotan(num: number): number
Returns the cotangent of `num`.

Example use:

```lua
math.cotan(4) --> 0.86369115445062
```

### e: number
Euler's number.

Example use:

```lua
math.e --> ~2.7182818284
```

### factorial(num: number): number
Returns `n!`.

Example use:

```lua
math.factorial(5) --> 120
```

**Exceptions**
* This function will throw an exception if `num` is non-integral
* This function will throw an exception if `num` is negative

### factorsof(num: number): { [number]: number }
Returns the factors of `num` in an array.

Example use:
```lua
math.factorsof(20) --> { 1, 2, 4, 5, 10, 20 }
```

**Exceptions**
* This function will throw an exception if `num` is non-integral
* This function will throw an exception if `num` is negative

### iseven(num: number): boolean
Returns a boolean that indicates if `num` is even or not.

Example use:

```lua
math.iseven(5) --> false
math.iseven(10) --> true
```

### isinf(num: number): boolean
Returns a boolean that indicates if `num` is (negative) infinity.

Example use:
```lua
math.isinf(math.huge) --> true
math.isinf(-math.huge) --> true
math.isinf(19) --> false
math.isinf(1/0) --> true
math.isinf(-1/0) --> true
```

### isnan(arg: any): boolean
Returns a boolean that indicates if `arg` is NaN.

Example use:
```lua
math.isnan(0/0) --> true
math.isnan(math.sqrt(-1)) --> true
math.isnan(math.huge) --> false
```

### nan: number
NaN itself. (not really since NaN ~= NaN :P, and NaN is technically a number)

Example use:
```lua
math.nan --> -nan(ind)
```

### roundtoplace(num: number, place: number?): number
Rounds `num` to `place` places. By default `place` will be 1 if omitted.

Example use:

```lua
math.roundtoplace(1.567, 2) --> 1.57
```

### secant(num: number): number
Returns the secant of `num`.

Example use:

```lua
math.secant(6) --> 1.0414819265951
```

## format

### delimit_thousands(num: number): string
Returns `num` as a string with thousands formatted. Does not account for localization, however it accounts for the case where `num` is negative or where `num` is non-integral.

Example use:

```lua
format.delimit_thousands(50000) --> 50,000
format.delimit_thousands(-45654) --> -45,654
format.delimit_thousands(-4542.45)) --> -4,542.45
```

## digital_clock(seconds: number): string
Returns the seconds provided in a digital clock format as a string. Useful for timers.

Example use:

```
for i = 120, 0, -1 do
	print(format.digital_clock(i))
end

-->
--[[
	2:00
	1:59
	1:58
	...
	0:00
]]--
```

### interpolate(str: string, tbl: { [string]: string | number }): string
Simulates JavaScript templates interpolation.

Example use:
```lua
format.interpolate("Hello my name is {name} and I am {age} years old!", {
	name = "incapaz",
	age = 16
}) --> "Hello my name is incapaz and I am 16 years old!"
```

## region3

### from_part(part: BasePart): Region3
Creates a Region3 out of a BasePart's `Size` and `Position`.
