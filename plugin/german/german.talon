language: de_DE
mode: user.german
-

hallo welt: insert("Hallo Welt")

^Befehl Modus$:
    mode.enable("command")
    mode.disable("user.german")

<phrase>: insert(phrase)

# dirty fix for randomly recognizing "n"
n: skip()
