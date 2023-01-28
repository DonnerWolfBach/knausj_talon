import os
import time
import unicodedata

import talon
from talon import (
    Context,
    Module,
    actions,
    app,
    clip,
    scope,
    settings,
    speech_system,
    ui,
)

mod = Module()
mod.mode("german")

ctx = Context()
ctx.matches = "mode: user.german"
ctx.settings = {
    "speech.engine": "d-small-de",
    "speech.language": "de_DE",
    "speech.timeout": 0.3,
}
