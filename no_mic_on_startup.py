"""Makes that there is no mic selected when talon starts up

allows me to preboot it without accidential recognitions

"""

from talon import Context, Module, actions, settings, app



def on_launch(): actions.sound.set_microphone("None")
app.register("launch", on_launch)