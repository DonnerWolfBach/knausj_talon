os: windows
and app.name: VirtualBox Virtual Machine
os: windows
and app.exe: /^virtualboxvm\.exe$/i
- 
# This is for the window that the virtual machine is actually running in/showing the running virtual machien

# host key combo to escape the capturing of the keyboard
host key combo: key(rctrl)

# For EIT Praktikum

tag(): terminal
tag(): user.unix_utilities
tag(): user.docker
tag(): user.kubectl
tag(): user.generic_unix_shell
tag(): user.git

it's admin: "itsadmin"
efficient (password | username): "itsadmin"

