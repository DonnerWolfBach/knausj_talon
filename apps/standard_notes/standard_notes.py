from talon import Context, Module, actions

mod = Module()
apps = mod.apps
apps.standard_notes = "app.name: Standard Notes"
apps.standard_notes = """
tag: browser
browser.host: app.standardnotes.com
"""

ctx = Context()
ctx.matches = r"""
app: standard_notes
"""

@ctx.action_class("user")
class UserActions:
    def command_search(command: str = ""):
        # should be ctrl-shift-:, but I use germany layout...
        actions.key("ctrl-shift-ö")
        if command != "":
            actions.sleep("500ms")
            actions.insert(command)