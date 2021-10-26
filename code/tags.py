from talon import Context, Module

mod = Module()

tagList = [
    "debugger",
    "disassembler",
    "gdb",
    "git",  # commandline tag for git commands
    "docker",
    "ida",
    "tabs",
    "generic_terminal",
    "kubectl",
    "generic_windows_shell",
    "generic_unix_shell",
    "terminal_location_shortcuts",
    "taskwarrior",  # commandline tag for taskwarrior commands
    "tmux",
    "windbg",
]
for entry in tagList:
    mod.tag(entry, f"tag to load {entry} and/or related plugins ")
