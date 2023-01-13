from talon import Module

mod = Module()


@mod.action_class
class Actions:
    def terminal_location_shortcuts_go(location :str):
        """moves the terminal to the location"""

    def terminal_location_shortcuts_path(location: str):
        """returns the path to the location"""

