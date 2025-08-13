code.language: cmake
-
# TODO: check how defining functions in cmake work and whether annotating them is possible
tag(): user.code_functions

tag(): user.code_functions_common


# TODO: check whether there is actual standards
# so far just seeing camelCase in professional cmake book
settings():
    user.code_private_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_variable_formatter = "PRIVATE_CAMEL_CASE"

retrieve (variable | value): 
    user.insert_between("${","}")
