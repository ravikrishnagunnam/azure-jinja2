# Design notes

## Purpose of this project
Current JSON-based template description is lacking high-level constructs for loops, conditionals and macros.   
They somehow exist but are not easy to use, are very verbose and dont facilitate reuse of code.   

Without creating a completely new language, this project aims to provide a set of **jinja2 macros** to generate JSON-based templates.  
jinja2 macros look like function call, support arguments with default values, jinja2 language includes loops, conditionals, variables, ....   
It is a more well-known paradigm for most of us.   


## API conventions
* Arguments names for macros are *camelCase*
* Arguments names for macros are the most common used names for a given parameters as seen on [azure-quickstart-templates](https://github.com/Azure/azure-quickstart-templates) project
* The **from_vars** macros make use of *ARM templates variables* as default values, it allows to call the macros without paramters and rely on the variables to pass values
* In the case of the **from_vars** macros, when a parameter is optional, there is a corresponding boolean *withXXX* parameter to pass to indicate if the optional parameter should be evaluated.

