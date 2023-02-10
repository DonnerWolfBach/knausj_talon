app: windows_terminal
-
# makes the commands in terminal.talon available
tag(): terminal

# activates the implementation of the commands/functions in terminal.talon
tag(): user.generic_windows_shell

# activates unix utilities
tag(): user.unix_utilities

# makes commands for certain applications available
# you can deactivate them if you do not use the application
tag(): user.git
tag(): user.anaconda
tag(): user.kubectl
tag(): user.docker
tag(): user.npm

tag(): user.tabs
# TODO: file_manager
tag(): user.splits

tag(): user.terminal_location_shortcuts

settings open: key(ctrl-,)
focus left: key(ctrl-alt-shift-left)
focus right: key(ctrl-alt-shift-right)
focus up: key(ctrl-alt-shift-up)
focus down: key(ctrl-alt-shift-down)
term menu: key(ctrl-shift-f1)

find it: edit.find()

find it <phrase>$:
    # handle consecutive finds by first escaping out of any previous one
    key(escape)
    # make it so
    edit.find("{phrase}\n")

# to open specific terminal profiles
profile <number_small>: key("ctrl-shift-{number_small}")
