os: windows
and app.exe: labview.exe
-

# chatgpt generated stub, not all are checked

# File Operations
new vi: key("ctrl-n")
open vi: key("ctrl-o")
close vi: key("ctrl-w")
save vi: key("ctrl-s")
save all: key("ctrl-shift-s")
print window: key("ctrl-p")
quit labview: key("ctrl-q")

# Navigation
(show |toggle) (front panel | block diagram): key("ctrl-e")
tile windows: key("ctrl-t")
find: key("ctrl-f")
next instance: key("ctrl-g")
previous instance: key("ctrl-shift-g")
next window: key("ctrl-tab")
previous window: key("ctrl-shift-tab")
[toggle] navigation window: key("ctrl-shift-n")
vi properties: key("ctrl-i")
error list: key("ctrl-l")
history window: key("ctrl-y")
all windows: key("ctrl-shift-w")
quick drop: key("ctrl-space")

# Execution Controls

# Run the VI
run vi: key("ctrl-r")

# Abort the VI when running
abort vi: key("ctrl-period")

# Toggle between run and edit mode
toggle run edit mode: key("ctrl-m")

# Recompile the current VI
recompile current vi: key("ctrl-shift-r")

# Recompile all VIs in memory
recompile all vis: key("ctrl-shift-shift-r")

# Move key focus inside an array or cluster while running
move focus inside array: key("ctrl-down")

# Move key focus outside an array or cluster while running
move focus outside array: key("ctrl-up")

# Navigate controls or indicators according to tabbing order while running
next control: key("tab")

# Navigate backward through controls or indicators while running
previous control: key("shift-tab")

# manually added

remove broken wires: key("ctrl-b")