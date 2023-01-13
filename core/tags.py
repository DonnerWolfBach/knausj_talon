from talon import Module

mod = Module()

tagList = [
    "disassembler",
    "gdb",
    "git",  # commandline tag for git commands
    "docker",
    "ida",
    "tabs",
    "generic_terminal", # TODO: check wether I can remove that
    "kubectl",
    "npm",
    "generic_windows_shell",
    "generic_unix_shell",
    "readline",
    "terminal_location_shortcuts",
    "taskwarrior",  # commandline tag for taskwarrior commands
    "tmux",
    "windbg",
]
for entry in tagList:
    mod.tag(entry, f"tag to load {entry} and/or related plugins ")
