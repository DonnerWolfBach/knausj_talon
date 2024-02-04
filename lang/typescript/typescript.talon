code.language: typescript
code.language: typescriptreact
-

# Most of this file I have added myself, it may be severely outdated

tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic

settings():
    user.code_private_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_variable_formatter = "PRIVATE_CAMEL_CASE"

(op | is) strict equal: " === "
(op | is) strict not equal: " !== "

state const: "const "

state let: "let "

state var: "var "

state async: "async "

state await: "await "

state map:
    insert(".map()")
    key(left)

state filter:
    insert(".filter()")
    key(left)

state reduce:
    insert(".reduce()")
    key(left)

state spread: "..."

# custom stuff
debug log:
    insert("console.log(``debug: `);")
    key(left)
    key(left)
    # please don't ask me wy ``debug: ` -> strange ` distribution

arrow function:
    insert("()=>{}")
    key(left)

tag(): user.javascript

type union [<user.code_type>]: " | {code_type or ''}"
type intersect [<user.code_type>]: " & {code_type or ''}"

state type: user.insert_between("type ", " = ")

as const: " as const"
