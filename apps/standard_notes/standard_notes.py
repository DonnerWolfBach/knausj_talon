from talon import Context, Module

mod = Module()
apps = mod.apps
apps.standard_notes = "app.name: Standard Notes"
apps.standard_notes = """
tag: browser
browser.host: app.standardnotes.com
"""

ctx = Context()
ctx.matches = r"""
app: standard_notes
"""
