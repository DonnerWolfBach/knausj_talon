from talon import Context, Module, actions

mod = Module()
mod.apps.logseq = "app.name: Logseq"
ctx = Context()

lang_ctx = Context()
lang_ctx.matches = r"""
app: logseq
not tag: user.code_language_forced
"""
@ctx.action_class("user")
class UserActions:
    def command_search(command: str = ""):
        actions.key("ctrl-shift-p")
        if command != "":
            actions.insert(command)

@lang_ctx.action_class("code")
class CodeActions:
    def language():
        return "markdown"
