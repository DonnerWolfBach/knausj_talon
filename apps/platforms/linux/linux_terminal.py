from talon import Context, actions
ctx = Context()
ctx.matches = r"""
os: linux
tag: terminal
"""

@ctx.action_class('edit')
class EditActions:
    def page_down():
        actions.key('shift-pagedown')
    def page_up():
        actions.key('shift-pageup')
    def paste():
        actions.key('ctrl-shift-v')
    def copy():
        actions.key('ctrl-shift-c')
    def find(text: str):
        actions.key('ctrl-shift-f')
        if str:
            actions.insert(text)
        
