from talon import Context, Module, actions, imgui, settings, ui, app

import os

ctx = Context()
mod = Module()
ctx.matches = r"""
app.name: konsole
"""

user_path = os.path.expanduser("~") # is this important?
directories_to_remap = {} # is this important?
directories_to_exclude = {} # is this important?

@ctx.action_class("user")
class user_actions:
    def terminal_list_directories():
        actions.insert("ls")
        actions.key("enter")

    def terminal_list_all_directories():
        actions.insert("ls -a")
        actions.key("enter")

    def terminal_change_directory(path: str):
        actions.insert("cd {}".format(path))
        if path:
            actions.key("enter")

    def terminal_change_directory_root():
        actions.insert("cd /")
        actions.key("enter")

    def terminal_clear_screen():
        actions.insert("clear")
        actions.key("enter")

    def terminal_run_last():
        actions.key("up enter")

    def terminal_kill_all():
        actions.key("ctrl-c")
        actions.insert("y")
        actions.key("enter")
    

