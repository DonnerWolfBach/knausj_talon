import re

from talon import Context, Module, actions, settings

from ..tags.operators import Operators

mod = Module()
ctx = Context()
ctx.matches = r"""
code.language: cmake
"""

ctx.lists["user.code_type"] = {
    "boolean":"BOOL",
    "file path": "FILEPATH",
    "path": "PATH",
    "string": "STRING",
    "internal": "INTERNAL"
}

mod.list("cmake_string_functions", desc="List of string functions for cmake, which require special formatting")


@mod.capture(rule="{user.cmake_string_functions}")
def cmake_string_functions(m) -> str:
    """Returns a function name"""
    return m.cmake_string_functions


@ctx.action_class("user")
class UserActions:
    def code_insert_function(text: str, selection: str):
        text += f"({selection or ''})"
        actions.user.paste(text)
        actions.edit.left()


