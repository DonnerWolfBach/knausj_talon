os: windows
and app.name: KiCad EDA 10.0.1
os: windows
and app.exe: /^kicad\.exe$/i
-
# TODO: generalize above

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


# Workflow commands
annotate schematic: key(alt-t a)  # Adjust based on your menu shortcut
run erc: key(alt-i e)              # Adjust based on your menu shortcut