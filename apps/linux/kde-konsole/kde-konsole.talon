os: linux
and app.name: konsole
- 
tag(): user.git
tag(): user.generic_terminal
tag(): user.tabs

launch visual editor: "code . \n"

complete: key(tab)


# tabs
create tab: key(ctrl-shift-t)
close tab: key(ctrl-shift-w)

action(tab_open): key(ctrl-shift-t)