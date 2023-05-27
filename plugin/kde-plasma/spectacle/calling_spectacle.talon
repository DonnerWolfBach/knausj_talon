os: linux
- 
# this is for calling spectacle when spectacle is not focused right now
# spectacle is a kde plasma standout app and may not work on other desktops

# behavior difference depending on whether spectacle is already opened or not

^spectacle$: key("printscr")

^spectacle window$: key("super-printscr")

^spectacle (desktop | all screens)$: key("shift-printscr")

# I have "spectacle rectangle" as an alias for grab selection,
# also see calling_spectacle.py for that
# ^spectacle rectangle$: key("shift-super-printscr")

