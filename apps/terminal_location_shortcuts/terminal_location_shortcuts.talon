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
^go talon$: user.terminal_location_shortcuts_go("Talon Home")
go talon user: user.terminal_location_shortcuts_go("Talon User")
go talon recordings: user.terminal_location_shortcuts_go("Talon Recordings")

# data drive
go data (drive|home): user.terminal_location_shortcuts_go("Data Home")
go (lectures|university): user.terminal_location_shortcuts_go("Data Lectures")




# paths 
desk path: user.terminal_location_shortcuts_path("Desktop")
docks path: user.terminal_location_shortcuts_path("Documents")
download path: user.terminal_location_shortcuts_path("Downloads")
pictures path: user.terminal_location_shortcuts_path("Pictures")
repositories path: user.terminal_location_shortcuts_path("Repositories")
user path: user.terminal_location_shortcuts_path("User")

talon path: user.terminal_location_shortcuts_path("Talon Home")
talon user path: user.terminal_location_shortcuts_path("Talon User")
talon recordings path: user.terminal_location_shortcuts_path("Talon Recordings")

data (drive|home) path: user.terminal_location_shortcuts_path("Data Home")
(lectures|university) path: user.terminal_location_shortcuts_path("Data Lectures")
