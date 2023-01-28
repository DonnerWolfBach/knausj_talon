not mode: sleep
-
# for activating german mode from englisch

^german mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("user.german")
    user.code_clear_language_mode()
    mode.disable("user.gdb")
