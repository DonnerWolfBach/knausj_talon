mode: user.german
-
settings():
	speech.engine = 'dragon'
	speech.language = 'de_DE'

# <user.prose>: auto_insert(prose)

# TODO: decide wether to remove this 

# zeichen
# neue Zeile: "\n"
# Komma: ", "
# Punkt: "."
# Ausrufezeichen: "!"
# Fragezeichen: "?"
# Klammer auf: "("
# Klammer zu: ")"
# Leerzeichen: " "

# navigation
gehe zum Ende der Zeile: edit.line_end()
gehe zum Beginn der Zeile: edit.line_start()

# exiting dragon-german mode
^befehl modus$:
	user.engine_mimic("geh schlafen")
    mode.disable("sleep")
    mode.disable("dictation")
    mode.disable("user.german")
    mode.enable("command")
    mode.disable("user.gdb")

