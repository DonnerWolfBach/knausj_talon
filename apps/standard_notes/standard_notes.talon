app: standard_notes
-

settings():
    # Necessary to stop commands like 'slap' getting jumbled
    key_wait = 9.0
    
# these two do not work in librewolf for some reason
note create: key("alt-shift-n")
tag create: key("ctrl-alt-n")

focus mode: key("ctrl-shift-f")

# following both standard notes naming and talon standards
[show|toggle] tags panel [show|toggle]: key("ctrl-shift-e")
[show|toggle] notes panel [show|toggle]: key("ctrl-shift-l")

# just the name now
note history: key("ctrl-shift-h")
editor width: key("ctrl-shift-j")
change note type:key("ctrl-shift-/")

# different name to avoid overlap with *
star note: key("ctrl-shift-s")
pin to top: key("ctrl-shift-p")
show markdown: key("ctrl-shift-m")


# TODO: super notes editor support