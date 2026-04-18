from talon import Context, Module, actions

mod = Module()
mod.apps.obsidian = "app.name: Obsidian"
ctx = Context()
lang_ctx = Context()
lang_ctx.matches = r"""
app: obsidian
not tag: user.code_language_forced
"""
# TODO: check whether I can get rid of lang_ctx


@lang_ctx.action_class("code")
class CodeActions:
    def language():
        return "markdown"

@ctx.action_class("user")
class UserActions:
    def command_search(command: str = ""):
        # note: default is different!
        actions.key("ctrl-shift-p")
        if command != "":
            actions.insert(command)