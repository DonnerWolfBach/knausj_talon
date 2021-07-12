os: linux
and app.name: konsole
- 
tag(): user.git
tag(): user.generic_terminal
tag(): user.tabs

launch visual editor: "code . \n"

complete: key(tab)

# tabs
action(app.tab_open): key(ctrl-shift-t)
action(app.tab_close): key(ctrl-shift-w)
action(app.tab_next): key(shift-right)
action(app.tab_previous): key(shift-left)
# for tab_jump see py file



action(edit.paste): key(ctrl-shift-v)