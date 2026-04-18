from talon import Context, Module, actions

ctx = Context()
mod = Module()


@ctx.action_class("user")
class UserActions:
    def command_search(command: str = ""):
        actions.key("ctrl-f1")
        if command != "":
            actions.sleep("2000ms")
            actions.insert(command)