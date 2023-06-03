from talon import Context, actions

ctx = Context()
ctx.matches = r"""
os: linux
and app.name: Zotero
os: windows
and app.name: Zotero

"""




# --- Implement actions ---
@ctx.action_class("user")
class user_actions:
    # user.tabs
    def tab_jump(number):
        actions.key(f"ctrl-{number}")