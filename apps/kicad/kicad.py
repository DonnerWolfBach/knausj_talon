from talon import Context, Module, actions

mod = Module()

# TODO understand line below
mod.apps.kicad = "app.exe: KiCad"

ctx = Context()
lang_ctx = Context()
lang_ctx.matches = r"""
app.name: /KiCad*/i

"""



@ctx.action_class("user")
class UserActions:
    def command_search(command: str = ""):
        actions.key("ctrl-f1")
        if command != "":
            # actions.sleep("5000ms")
            actions.insert(command)