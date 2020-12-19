# Intro

Welcome to the contributing guide! Here you will find the guidelines for contributing. Whether it be source, documenting, or more. The style is somewhat arbitrary, but it should be reasonable.


# Libraries++ Source Contributing Guide
* Use `snake_case` for variable, parameter, etc. names
* Custom library names use `snake_case`, library members also use `snake_case`
* Built-in library extensions use all lowercase
* Keep comments within 80 columns, keep code lines within 120 columns
* Individual  functions belong as a submodule of their parent library (e.g join should be a child module of string)

# Libraries++ Documentation Guide
* Use heading 2 for library names and heading 3 for library members
* No line of space between header 3 and description
* Line of space between description and `Example use: [code]` (also no space in between `Example use:` and code block
* Use `lua` extension for code block
