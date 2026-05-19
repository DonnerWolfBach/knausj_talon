os: windows
and app.name: Sonic Visualiser.exe
os: windows
and app.exe: /^sonic\ visualiser\.exe$/i
-

# TODO: media
# TODO: formatting according to style 


# my common commands (tested)

file open: key(ctrl-o)
[audio|file] import: key(ctrl-i)


# mistral/llm Generated commands (untested)

# File and Session Management
new session: key(ctrl-n) 
# Abandon the current Sonic Visualiser session and start a new one
open file: key(ctrl-o) 
# Open a session file, audio file, or layer
import audio: key(ctrl-i) 
# Import an extra audio file into a new pane
open location: key(ctrl-shift-o) 
# Open or import a file from a remote URL
reopen file: key(ctrl-r) 
# Re-open the current or most recently opened file
save session: key(ctrl-s) 
# Save the current session into a Sonic Visualiser session file
import layer: key(ctrl-l) 
# Import layer data from an existing file
export layer: key(ctrl-y) 
# Export layer data to a file
quit: key(ctrl-q) 
# Exit Sonic Visualiser


# Editing
cut: key(ctrl-x) 
# Cut the selection from the current layer to the clipboard
copy: key(ctrl-c) 
# Copy the selection from the current layer to the clipboard
paste: key(ctrl-v) 
# Paste from the clipboard to the current layer
paste at playback: key(ctrl-shift-v) 
# Paste from the clipboard to the current layer, placing the first item at the playback position
delete items: key(del) 
# Delete items in current selection from the current layer


# Selection
select all: key(ctrl-a) 
# Select the whole duration of the current session
select visible: key(ctrl-shift-a) 
# Select the time range corresponding to the current window width
select to start: key(shift-left) 
# Select from the start of the session to the current playback position
select to end: key(shift-right) 
# Select from the current playback position to the end of the session
clear selection: key(esc) 
# Clear the selection


# Tapping Time Instants
insert instant: key(;) 
# Insert a new time instant at the current playback position, in a new layer if necessary
insert instants at boundaries: key(shift-;) 
# Insert new time instants at the start and end of the current selected regions, in a new layer if necessary
insert item at selection: key(ctrl-shift-;) 
# Insert a new note or region item corresponding to the current selection


# Panning and Navigation
scroll left: key(left) 
# Scroll the current pane to the left
scroll right: key(right) 
# Scroll the current pane to the right
jump left: key(ctrl-left) 
# Scroll the current pane a big step to the left
jump right: key(ctrl-right) 
# Scroll the current pane a big step to the right
peek left: key(alt-left) 
# Scroll the current pane to the left without moving the playback cursor or other panes
peek right: key(alt-right) 
# Scroll the current pane to the right without moving the playback cursor or other panes


# Zoom
zoom in: key(up) 
# Increase the zoom level
zoom out: key(down) 
# Decrease the zoom level
zoom to fit: key(f) 
# Zoom to show the whole file


# Display Features
toggle centre line: key(') 
# Show or hide the centre line
toggle time rulers: key(
#) 
# Show or hide all time rulers
hide overlays: key(0) 
# Hide times, layer names, and scale
minimal overlays: key(9) 
# Show times and basic scale
all overlays: key(8) 
# Show times, layer names, and scale
show zoom wheels: key(z) 
# Show thumbwheels for zooming horizontally and vertically
show property boxes: key(x) 
# Show the layer property boxes at the side of the main window
show layer summary: key(y) 
# Open a window displaying the hierarchy of panes and layers in this session
full screen: key(f11) 
# Expand the pane area to the whole screen


# Managing Panes and Layers
new pane: key(n) 
# Add a new pane containing only a time ruler
new text layer: key(t) 
# Add a new empty layer of type Text
add waveform: key(shift-w) 
# Add a new layer showing a waveform view
add spectrogram: key(shift-g) 
# Add a new layer showing a spectrogram
add melodic spectrogram: key(shift-m) 
# Add a new layer showing a spectrogram set up for an overview of note pitches
add peak spectrogram: key(shift-k) 
# Add a new layer showing a spectrogram set up for tracking frequencies
add spectrum: key(shift-u) 
# Add a new layer showing a frequency spectrum
previous pane: key([) 
# Make the next pane up in the pane stack current
next pane: key(]) 
# Make the next pane down in the pane stack current
delete pane: key(ctrl-shift-d) 
# Delete the currently active pane
previous layer: key({) 
# Make the previous layer in the pane current
next layer: key(}) 
# Make the next layer in the pane current
delete layer: key(ctrl-d) 
# Delete the currently active layer
rename layer: key(r) 
# Rename the currently active layer
edit layer data: key(e) 
# Edit the currently active layer as a data grid


# Running Transforms
find transform: key(ctrl-m) 
# Search for a transform from the installed plugins, by name or description


# Playback and Transport Controls
play pause: key(space) 
# Start or stop playback from the current position
record: key(ctrl-space) 
# Record a new audio file
constrain playback: key(s) 
# Constrain playback to the selected regions
loop playback: key(l) 
# Loop playback
solo pane: key(o) 
# Solo the current pane during playback
rewind: key(pgup) 
# Rewind to the previous time instant or time ruler notch
fast forward: key(pgdown) 
# Fast-forward to the next time instant or time ruler notch
rewind similar: key(shift-pgup) 
# Rewind to the previous similarly valued time instant
fast forward similar: key(shift-pgdown) 
# Fast-forward to the next similarly valued time instant
rewind to start: key(home) 
# Rewind to the start
fast forward to end: key(end) 
# Fast-forward to the end
speed up: key(ctrl-pgup) 
# Time-stretch playback to speed it up without changing pitch
slow down: key(ctrl-pgdown) 
# Time-stretch playback to slow it down without changing pitch
restore speed: key(ctrl-home) 
# Restore non-time-stretched playback


# Tool Selection
navigate tool: key(1) 
# Navigate
select tool: key(2) 
# Select ranges
edit tool: key(3) 
# Edit items in layer
draw tool: key(4) 
# Draw new items in layer
erase tool: key(5) 
# Erase items from layer
measure tool: key(6) 
# Make measurements in layer


# Help
help reference: key(f1) 
# Open the Sonic Visualiser reference manual
key reference: key(f2) 
# Open a window showing the keystrokes you can use in Sonic Visualiser