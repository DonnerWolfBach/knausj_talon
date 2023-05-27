"""Ensuring grab selection actually works on kde plasma.

By default the shortcut is valid for the gnome desktop and not for kde plasma. 
To overwrite this, outcomment these lines in screenshot.py:


@ctx_linux.action_class("user")
class UserActionsLinux:
    def screenshot_selection():
        actions.key("shift-printscr")


"""

from talon import Context, Module, actions, app, clip, cron, screen, ui


ctx_linux = Context()
ctx_linux.matches = r"""
os: linux
"""

@ctx_linux.action_class("user")
class UserActionsLinux:
    def screenshot_selection():
        actions.key("shift-super-printscr")