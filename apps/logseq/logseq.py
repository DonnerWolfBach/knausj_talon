from talon import Context, Module

mod = Module()
mod.apps.logseq = "app.name: Logseq"

lang_ctx = Context()
lang_ctx.matches = r"""
app: logseq
not tag: user.code_language_forced
"""


@lang_ctx.action_class("code")
class CodeActions:
    def language():
        return "markdown"
