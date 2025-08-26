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


@ctx.action_class("user")
class UserActions:
    def code_insert_function(text: str, selection: str):
        # for string functions and other functions where the functionalitiy
        # is determinded by the first parameter
        text += " " if "(" in text else "("
        text += f"{selection or ''})"
        actions.user.paste(text)
        actions.edit.left()


