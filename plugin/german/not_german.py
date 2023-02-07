"""This file has the purpose to set the model and language back after
getting out of german mode"""

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

ctx = Context()
ctx.matches = "mode: command"
ctx.settings = {
    "speech.engine": "wav2letter",
    "speech.language": "en_US",
}
