os: windows
and app.name: SSH, Telnet, Rlogin, and SUPDUP client
os: windows
and app.exe: putty.exe
-
# makes the commands in generic_terminal available
tag(): terminal

# activates the implementation of the commands/functions in generic_terminal
tag(): user.generic_unix_shell

# makes commands for certain applications available
# you can deactivate them if you do not use the application
tag(): user.git
# tag(): user.anaconda
# tag(): user.kubectl
