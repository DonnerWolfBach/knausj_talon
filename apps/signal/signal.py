from talon import Context, Module

ctx = Context()
mod = Module()
apps = mod.apps

apps.signal = "app.name: Signal"
mod.apps.signal = r"""
os: windows
and app.name: Signal
os: windows
and app.exe: /^signal\.exe$/i
"""
apps.signal = """
os: mac
and app.bundle: org.whispersystems.signal-desktop
"""
ctx.matches = r"""
app: signal
"""


@mod.action_class
class Actions:
    def signal_show_shortcuts():
        """Shows Signal keyboard shortcuts"""

    def signal_next_section():
        """Moves to the next Signal section"""

    def signal_previous_conversation():
        """Moves to the previous conversation"""

    def signal_next_conversation():
        """Moves to the next conversation"""

    def signal_previous_unread():
        """Moves to the previous unread conversation"""

    def signal_next_unread():
        """Moves to the next unread conversation"""

    def signal_open_preferences():
        """Opens Signal preferences"""

    def signal_open_conversation_menu():
        """Opens the conversation menu"""

    def signal_search():
        """Searches Signal"""

    def signal_search_chat():
        """Searches the current chat"""

    def signal_focus_composer():
        """Focuses the message composer"""

    def signal_open_media():
        """Opens media"""

    def signal_open_emoji():
        """Opens the emoji picker"""

    def signal_open_sticker():
        """Opens the sticker picker"""

    def signal_record_voice_message():
        """Records a voice message"""

    def signal_archive_chat():
        """Archives the current chat"""

    def signal_unarchive_chat():
        """Unarchives the current chat"""

    def signal_first_message():
        """Moves to the first message"""

    def signal_last_message():
        """Moves to the last message"""

    def signal_close_chat():
        """Closes the current chat"""

    def signal_send_it():
        """Sends the current message"""

    def signal_message_details():
        """Shows message details"""

    def signal_reply():
        """Replies to the selected message"""

    def signal_react():
        """Reacts to the selected message"""

    def signal_save_attachment():
        """Saves the selected attachment"""

    def signal_delete_message():
        """Deletes the selected message"""

    def signal_send_message():
        """Sends the composed message"""

    def signal_expand_chat():
        """Expands the chat composer"""

    def signal_attach_file():
        """Attaches a file"""

    def signal_remove_link_preview():
        """Removes the link preview"""

    def signal_remove_link_attachment():
        """Removes the link attachment"""