^microphone show$: user.microphone_selection_toggle()
^microphone close$: user.microphone_selection_hide()
^microphone pick <number_small>$: user.microphone_select(number_small)
key(shift-f9): user.microphone_next()

# To enable microphone selection entirely from the keyboard
# (e.g., when Talon can't hear you), uncomment the next line
key(ctrl-alt-.): user.microphone_selection_toggle()
