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
go data (drive|home): user.terminal_location_shortcuts_go("Data Home")
go (lectures|university): user.terminal_location_shortcuts_go("Data Lectures")




# paths 
desk path: user.user.terminal_location_shortcuts_path("TODO")
docks path: user.user.terminal_location_shortcuts_path("TODO")
download path: user.terminal_location_shortcuts_path("Downloads")
pictures path: user.user.terminal_location_shortcuts_path("TODO")
repositories path: user.user.terminal_location_shortcuts_path("TODO")
user path: user.user.terminal_location_shortcuts_path("TODO")

talon path: user.user.terminal_location_shortcuts_path("TODO")
talon user path: user.user.terminal_location_shortcuts_path("TODO")
talon recordings path: user.user.terminal_location_shortcuts_path("TODO")
data (drive|home) path: user.user.terminal_location_shortcuts_path("TODO")
(lectures|university) path: user.user.terminal_location_shortcuts_path("TODO")
