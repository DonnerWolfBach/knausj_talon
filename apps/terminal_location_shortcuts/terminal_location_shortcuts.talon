tag: user.terminal_location_shortcuts
- 
# this file contains some shortcuts for the terminal
# the implementation should be outside of knausj

go desk: user.terminal_location_shortcuts_go("Desktop")
go docks: user.terminal_location_shortcuts_go("Documents")
go downloads: user.terminal_location_shortcuts_go("Downloads")
go pictures: user.terminal_location_shortcuts_go("Pictures")
go repositories: user.terminal_location_shortcuts_go("Repositories")
go user: user.terminal_location_shortcuts_go("User")

# talon locations
go talon: user.terminal_location_shortcuts_go("Talon Home")
go talon user: user.terminal_location_shortcuts_go("Talon User")
go talon recordings: user.terminal_location_shortcuts_go("Talon Recordings")

# data drive
go data (drive|home): user.terminal_location_shortcuts_go("")
go lectures: user.terminal_location_shortcuts_go("")




# paths 
# TODO: think about making something generic so that go <location> and <location> path both work
download path: # TODO

