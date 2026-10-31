from talon import Context, actions, Module

mod = Module()

ctx = Context()
ctx.matches = r"""
os: windows
app: signal
"""


@mod.action_class
class Actions:
    def find_everywhere(text: str):
        """"""

        actions.key("ctrl-f")

        if text:
            actions.insert(text)

@ctx.action_class("edit")
class EditActions:

    def find(text = None):
        actions.key("ctrl-shift-f")
        if text:
            actions.insert(text)


@ctx.action_class("user")
class UserActions:
    def signal_show_shortcuts():
        actions.key("ctrl-#")

    def signal_next_section():
        actions.key("ctrl-t")

    def signal_previous_conversation():
        actions.key("alt-up")

    def signal_next_conversation():
        actions.key("alt-down")

    def signal_previous_unread():
        actions.key("alt-shift-up")

    def signal_next_unread():
        actions.key("alt-shift-down")

    def signal_open_preferences():
        actions.key("ctrl-,")

    def signal_open_conversation_menu():
        actions.key("ctrl-shift-l")

    def signal_search():
        actions.key("ctrl-f")

    def signal_search_chat():
        actions.key("ctrl-shift-f")

    def signal_focus_composer():
        actions.key("ctrl-shift-t")

    def signal_open_media():
        actions.key("ctrl-shift-m")

    def signal_open_emoji():
        actions.key("ctrl-shift-j")

    def signal_open_sticker():
        actions.key("ctrl-shift-o")

    def signal_record_voice_message():
        actions.key("ctrl-shift-y")

    def signal_archive_chat():
        actions.key("ctrl-shift-a")

    def signal_unarchive_chat():
        actions.key("ctrl-shift-u")

    def signal_first_message():
        actions.key("ctrl-up")

    def signal_last_message():
        actions.key("ctrl-down")

    def signal_close_chat():
        actions.key("ctrl-shift-c")

    def signal_send_it():
        actions.key("enter")

    def signal_message_details():
        actions.key("ctrl-d")

    def signal_reply():
        actions.key("ctrl-shift-r")

    def signal_react():
        actions.key("ctrl-shift-e")

    def signal_save_attachment():
        actions.key("ctrl-s")

    def signal_delete_message():
        actions.key("ctrl-shift-d")

    def signal_send_message():
        actions.key("ctrl-enter")

    def signal_expand_chat():
        actions.key("ctrl-shift-k")

    def signal_attach_file():
        actions.key("ctrl-u")

    def signal_remove_link_preview():
        actions.key("ctrl-p")

    def signal_remove_link_attachment():
        actions.key("ctrl-shift-p")


