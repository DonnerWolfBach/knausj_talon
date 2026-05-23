import os

from talon import Context, Module, actions, ui

ctx = Context()
mod = Module()
ctx.matches = r"""
app.name: VirtualBox Virtual Machine
"""

user_path = os.path.expanduser("~")
directories_to_remap = {}
directories_to_exclude = {}


@ctx.action_class("app")
class AppActions:
    def tab_close():
        actions.key("ctrl-shift-w")

    def tab_open():
        actions.key("ctrl-shift-t")
