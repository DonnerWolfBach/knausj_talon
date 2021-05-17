not mode: sleep
-
^dictation mode$:
    mode.disable("sleep")
    mode.disable("user.german")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")
^command mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.disable("user.german")
    mode.enable("command")
^german mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.disable("dictation")
    mode.enable("user.german")
    user.code_clear_language_mode()
    mode.disable("user.gdb")
^englischer modus$:
    mode.disable("sleep")
    mode.disable("command")
    mode.disable("user.german")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")
^befehl modus$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.disable("user.german")
    mode.enable("command")


