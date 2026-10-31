app: signal
-

tag(): user.emoji
tag(): user.find_and_replace

# General
show shortcuts: user.signal_show_shortcuts()

# Navigation
(next | nav | navigate) [by] (sec | section): user.signal_next_section()
(prev | previous) (chat | conversation): user.signal_previous_conversation()
next (chat | conversation): user.signal_next_conversation()
(prev | previous) unread: user.signal_previous_unread()
next unread: user.signal_next_unread()
[open] (pref | preferences): user.signal_open_preferences()
open conversation menu: user.signal_open_conversation_menu()
search: user.signal_search()
search chat: user.signal_search_chat()
focus (chat | composer): user.signal_focus_composer()
open media: user.signal_open_media()
open emoji: user.signal_open_emoji()
open sticker: user.signal_open_sticker()
record [voice] message: user.signal_record_voice_message()
archive chat: user.signal_archive_chat()
unarchive chat: user.signal_unarchive_chat()
(first | top) message: user.signal_first_message()
(last | bottom) message: user.signal_last_message()
close chat: user.signal_close_chat()

# Message actions
send it: user.signal_send_it()
message details: user.signal_message_details()
reply [message]: user.signal_reply()
react [message]: user.signal_react()
save attachment: user.signal_save_attachment()
delete [message]: user.signal_delete_message()

# Composer
send message: user.signal_send_message()
expand chat: user.signal_expand_chat()
attach [file]: user.signal_attach_file()
remove [link] preview: user.signal_remove_link_preview()
remove [link] attachment: user.signal_remove_link_attachment()