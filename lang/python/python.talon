code.language: python
-
tag(): user.code_imperative
tag(): user.code_object_oriented

tag(): user.code_comment_documentation
tag(): user.code_comment_line
tag(): user.code_data_bool
tag(): user.code_data_null
tag(): user.code_functions
tag(): user.code_functions_common
tag(): user.code_keywords
tag(): user.code_libraries
tag(): user.code_libraries_gui
tag(): user.code_operators_array
tag(): user.code_operators_assignment
tag(): user.code_operators_bitwise
tag(): user.code_operators_lambda
tag(): user.code_operators_math

settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
    user.code_public_variable_formatter = "SNAKE_CASE"

#python-specific grammars
dunder in it: "__init__"
state (def | deaf | deft): "def "
state try: "try:\n"
state except: "except "
state raise: "raise "
self taught: "self."
pie test: "pytest"
state past: "pass"

[state] raise {user.python_exception}:
    user.insert_between("raise {python_exception}(", ")")
[state] except {user.python_exception}: "except {python_exception}:"

dock string: user.code_comment_documentation()
dock {user.python_docstring_fields}:
    insert("{python_docstring_fields}")
    edit.left()
dock type {user.code_type}: user.insert_between(":type ", ": {code_type}")
dock returns type {user.code_type}: user.insert_between(":rtype ", ": {code_type}")

toggle imports: user.code_toggle_libraries()
import <user.code_libraries>:
    user.code_insert_library(code_libraries, "")
    key(end enter)

from import: user.insert_between("from ", " import ")

# custom stuff (TODO: clean up)

insert debugger: "import pdb; pdb.set_trace()"

import numpy: "import numpy as np\n"
import pandas: "import pandas as pd\n"
import matplotlib: "import matplotlib.pyplot as plt\n"

matplotlib subplots: "fig, ax = plt.subplots()"



# timeit stuff
import (time it| benchmarking): "import timeit\n"
basic (time it| benchmarking): user.insert_between("print(timeit.timeit(\"","\", globals=locals()))")

single (time it| benchmarking):
    insert("repetitions = 1\n")
    user.insert_between("print(timeit.timeit(\"","\", globals=locals(),number=repetitions)/repetitions)")


import logging (basics | stuff):
    """from logging import debug,DEBUG,info,INFO,basicConfig,getLogger, WARNING
    basicConfig(
        level=DEBUG
    )

    # makes sure matplotlib does not spam
    import matplotlib
    getLogger(matplotlib.__name__).setLevel(WARNING)"""

debug logging: user.insert_between("debug(f\"","\")")
info logging: user.insert_between("info(f\"","\")")

import (unittest | unit test):
    """import unittest

    class TestStringMethods(unittest.TestCase):

        def test_upper(self):
            self.assertEqual('foo'.upper(), 'FOO')
    """

format string: user.insert_between("f\"","\"")
format string (simple | equals): user.insert_between("f\"{","=}\"")


watermark notebook:
    """%load_ext watermark
    %watermark -i -u -v -p pandas,numpy,sklearn,matplotlib"""

