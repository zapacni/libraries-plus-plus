# Intro

Welcome to the contributing guide! Here you will find the guidelines for contributing. Whether it be source, documenting, or more. The style is somewhat arbitrary, but it should be reasonable.


# Libraries++ Source Contributing Guide
* Respect most of the [Roblox Lua Style Guide](https://roblox.github.io/lua-style-guide/); only exception is use `snake_case` for type, variable, parameter, etc. names
* Custom library names use `snake_case`, library members also use `snake_case`
* Built-in library extensions use all lowercase
* Keep comments within 80 columns, keep code lines within 120 columns (like in the Roblox Lua Style Guide)
* Individual  functions belong as a submodule of their parent library (e.g join should be a child module of string)
* Table literals must have a space between the curly braces and the elements, elements being delimited by comma and space, or comma and newline when applicable. If a dictionary has more than 3 entries put each pair in a new line.
    * Good examples:
    ```lua
    { }
    
    { "a", "b", "c" }
    
    {
        "a",
        "b",
        "c",
    }
    
    { __index = function(tbl, index)
    
    end }
    
    {
        foo = "bar",
        bar = "baz",
        baz = "qux",
        qux = "quux"
    }
    ```
    * Bad:
    ```lua
    {}
    
    {"a","b","c"}
    
    {
        "a", "b", "c"
    }
    
    {__index=function(tbl,index)
    
    end}
    
    {foo = "bar", bar = "baz", baz = "qux", qux = "quux"}
    ```

# Libraries++ Documentation Guide
* Use heading 2 for library names and heading 3 for library members
* No line of space between header 3 and description
* Line of space between description and `Example use: [code]` (also no space in between `Example use:` and code block)
* Use `lua` extension for code block
