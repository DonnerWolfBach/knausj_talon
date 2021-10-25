not mode: sleep
-
# dictation works with webspeech
^the other dictation mode$:
    mode.disable("sleep")
    mode.disable("user.german")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    # gdb = debug mode (or something related)
    mode.disable("user.gdb")

^command mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.disable("user.german")
    mode.enable("command")

# german once worked with webspeech but now with dragon

^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.disable("dictation")
    mode.enable("user.german")
    user.code_clear_language_mode()
    mode.disable("user.gdb")
    user.engine_mimic("wach auf")

^englischer modus$:
    mode.disable("sleep")
    mode.disable("command")
    mode.disable("user.german")
    mode.enable("dictation")
    user.code_clear_language_mode() 
    mode.disable("user.gdb")

# "befehl modus" moved to german_dragon.talon



