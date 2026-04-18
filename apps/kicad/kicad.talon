app.name: /KiCad*/i
-
# TODO: generalize above

settings():
    # key_wait = 9.0
    # key_hold = 64
    # insert_wait = 1

# does not actually have command search, but I mapped it to hotkey thing
# TODO: fix, does not work reliably
tag(): user.command_search

hotkey search: key(ctrl-f1)


Refresh | reload it: key(f5)

# KiCad Schematic Editor Voice Commands

# Place commands
place symbol: key(a)
place power [symbol]: key(p)
draw wire: key(w)
draw bus: key(b)
place net label: key(l)
place global label: key(ctrl-l)

# Edit commands
edit properties: key(e)
edit value: key(v)
assign footprint: key(f)

Preferences | Settings: key(ctrl-,)

# Custom Hotkeys
draw rectangle: key(ctrl-alt-shift-r)