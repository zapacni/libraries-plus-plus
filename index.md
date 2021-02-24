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

### islower(str: string): boolean
Returns a boolean that indicates if `str` is all lowercase. Inspired by Python's `str.islower()'

Example use:
```lua
string.islower("abc") --> true
string.islower("ABC") --> false
```

### isupper(str: string): boolean
Returns a boolean that indicates if `str` is all uppercase. Inspired by Python's `str.isupper()'

Example use:
```lua
string.isupper("ABC") --> true
string.isupper("abc") --> false
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

### startswith(str: string, start: string): boolean
Returns a boolean value indicating whether `str` starts with the string `start`.
Useful for admin commands, checking if a string representing a website is HTTP(S), etc.

Example usage:

```lua
string.startswith("!fly me", "!") --> true
string.startswith("https://www.roblox.com/", "https://") --> true
string.startswith("hello world", "Hello") --> false
```

### strip(str: string, chars: string?): string
Strips any leading and trailing whitespace from `str`, and optionally strips `str` of any characters in `chars`. The latter is optional, so if not provided the function will just strip leading and trailing whitespace.

Example use:

```lua
string.strip("    apple ") --> "apple"
string.strip("    dogs are cute  ", "dc") -- "ogs are cute"
```

### swapcase(str: string): string
Returns the cases of each character in `str` swapped.

Example use:

```lua
string.swapcase("hELLO wORLD") --> "Hello World"
string.swapcase("sPoNgEbOb CaSe") --> "SpOnGeBoB cAsE"
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

### copy(tbl: { any }, deep: boolean?): { any }
Returns a copy of `tbl`. The `deep` argument is optional; if not provided the function will by default make a shallow copy.

Example use:

```lua
local tbl = { { } }
local shallow_tbl_copy = table.copy(tbl)
local deep_tbl_copy = table.copy(tbl, true)

shallow_tbl_copy[1] == tbl[1] --> true
deep_tbl_copy[1] == tbl[1] --> false
```

### count(tbl: { any }, value: any): number
Returns the amount of times `value` is repeated in `tbl`.

Example usage:

```lua
table.count({ "a", "b", "c", "a", "a" }, "a") --> 3
```

### filter(tbl: { any }, predicate: (any, number?, { any }?) -> boolean): { any }
Returns a copy of `tbl` with all the elements that satisfy the predicate function provided.

Passes the current value, and optionally the current index, and the source array as arguments to the predicate function.

Example use:

```lua
local tbl = { "cool", "hot", "warm", "chill" }
local new_tbl = table.filter(tbl, function(value: string)
	return #value > 4
end)

new_t --> { "chill" }
```

### isempty(tbl: { [any]: any }): boolean
Returns a boolean that indicates whether or not `tbl` is empty.
This function can take a dictionary as well -- there is no point in making it only take an array.

Example usage:

```lua
table.isempty({ }) --> true
table.isempty({ 0, 1, 2 }) --> false
```

### map(tbl: { any }, callback: (any, number?, { any }?) -> (any)): { any }
Returns a copy of `tbl` with the function `callback` applied to each element in `tbl`.

Passes the current value, and optionally the current index, and the source array as arguments to the callback function.

Example usage:

```lua
local tbl = { 1, 4, 9, 16, 25 }
local new_tbl = table.map(tbl, function(value: number)
	return 2*value
end)

new_t --> { 2, 8, 18, 32, 50 }
```

### reduce(tbl: { any }, reducer: (any, any, number?, { any }?) -> (any), initial_value: any?): any
Reduces `tbl` to a single value calling the `reducer` function, passing each element of `tbl` to the reducer.
The return value of the reducer is stored in an accumulator.

Passes the accumulated result (or initial value if provided), the current value, and optionally the current index, and the source array as arguments to the reducer.

Example use:

```lua
local tbl = { "a", "b", "c", "d", "e", "f" }
local reduced = table.reduce(tbl, function(accumulated: string, value: string)
	return accumulated .. value
end)

reduced --> "abcdef"
```

### reverse(tbl: { any }): { any }
Reverses `tbl` and returns it.

Example usage:

```lua
table.reverse({ 0, 1, 2 }) --> { 2, 1, 0 }
```

### shuffle(tbl: { any }): { any }
Shuffles the contents of `tbl` and returns `tbl` back shuffled.

Example usage:

```lua
table.shuffle({ "a", "b", "c", "d", "e", "f" }) --> { "d", "a", "c", "b", "f", "e" } (example result)
```

**Exceptions**
* This function will throw an exception if `#tbl < 2` since there is no point in shuffling a single-element table let alone an empty one.

### zip(...: { any })
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

### comb(n: number, k: number): number
Returns how many ways to choose `k` items from `n` items with no repetition and no order.

Example use:

```lua
math.comb(10, 2) --> 45
```

**Exceptions**
* This function will throw an exception if `k` or `n` are non-integral
* This function will throw an exception if `k` or `n` are negative

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

### factorsof(num: number): { number }
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

### nhuge: number
Negative infinity.

Example use:

```lua
math.nhuge --> -inf
```

### phi: number
The constant phi.

Example use:

```lua
math.phi --> ~1.6180339887499
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

### tau: number
The constant tau. Equivalent of 2π.

Example use:

```lua
math.tau --> ~6.2831853071796
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

### digital_clock(seconds: number): string
Returns the seconds provided in a digital clock format as a string. Useful for timers.

Example use:

```lua
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
format.interpolate("Hello my name is ${name} and I am ${age} years old!", {
	name = "incapaz",
	age = 16
}) --> "Hello my name is incapaz and I am 16 years old!"
```

## scheduler

### delay(num: number, f: (number?) -> ())
Delays the call to `f` for about `n` seconds without interrupting the current thread.
Passes the actual time waited to `f`.

Example usage:

```lua
scheduler.delay(5, print) --> 5.0105606773868 (this is what waited for me, will vary between calls)
```

### spawn(f, ...)
A generic "fast spawn" implementation without the ~1/30th wait at the beginning.

### wait(num: number): number
A custom implementation of `wait` based on RunService's `PostSimulation` event.
Returns the actual time waited in seconds.

Example use:

```lua
scheduler.wait(2) --> 2.0169207276776 (this is what waited for me, will vary between calls)
```

## instance

### get_ancestors(instance: Instance): { Instance? }
Returns the ancestors of `instance` all the way up to the DataModel (`game`).

### get_ancestors_of_class(instance: Instance, class_name: string): { Instance? }
Functions like `instance.get_ancestors` but only returns ancestors of a certain class.

### get_ancestors_which_are_a(instance: Instance, class_name: string): { Instance? }
Functions like `instance.get_ancestors_of_class` but takes into account inheritance.

### get_children_of_class(instance: Instance, class_name: string): { Instance? }
Returns the children of `instance` that are of a certain class.

### get_children_which_are_a(instance: Instance, class_name: string): { Instance? }
Functions like `instance.get_children_of_class` but takes into account inheritance.

### get_descendants_of_class(instance: Instance, class_name: string): { Instance? }
Returns the descendants of `instance` that are of a certain class.

### get_descendants_which_are_a(instance: Instance, class_name: string): { Instance? }
Functions like `instance.get_descendants_of_class` but takes into account inheritance.

### get_siblings(instance: Instance): { Instance? }
Returns the siblings of `instance`.

### get_siblings_of_class(instance: Instance, class_name: string): { Instance? }
Returns the siblings of `instance` that are of a certain class.

### get_siblings_which_are_a(instance: Instance, class_name: string): { Instance? }
Functions like `instance.get_siblings_of_class` but takes into account inheritance.

### wait_for_child_of_class(instance: Instance, class_name: string): Instance?
Waits for a child of `instance` of a certain class. Currently does not support a `timeout` argument.

### wait_for_child_which_is_a(instance: Instance, class_name: string): Instance?
Functions like `instance.wait_for_child_of_class` but takes into account inheritance. Currently does not support a `timeout` argument.

## color3

### add(lhs: Color3, rhs: Color3): Color3
Adds the RGB components of the left and right hand side together to form one Color3.

### subtract(lhs: Color3, rhs: Color3): Color3
Subtracts the RGB components of the left and right hand side together to form one Color3.

### multiply(lhs: Color3, rhs: Color3 | number): Color3
Multiplies the RGB components of the left and right hand side together to form one Color3. If `rhs` is a number each component of the left hand side is multiplied by `rhs`.

### divide(lhs: Color3, rhs: Color3 | number): Color3
Divides the RGB components of the left and right hand side together to form one Color3. If `rhs` is a number each component of the left hand side is divided by `rhs`.

## region3

### from_part(part: BasePart): Region3
Creates a Region3 out of a BasePart's `Size` and `Position`. Great for your non-rotated Region3 needs.
