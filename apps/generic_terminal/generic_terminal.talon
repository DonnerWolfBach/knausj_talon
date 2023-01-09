tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file

lisa: user.terminal_list_directories()
lisa all: user.terminal_list_all_directories()
lisa details: user.terminal_list_all_directories_detailed()

katie [<user.text>]: user.terminal_change_directory(text or "")
katie root: user.terminal_change_directory_root()
katie upwards: "cd .. \n"

clear screen: user.terminal_clear_screen()
run last: user.terminal_run_last()
rerun [<user.text>]: user.terminal_rerun_search(text or "")
rerun search: user.terminal_rerun_search("")
kill all: user.terminal_kill_all()

complete: key(tab) 
# because it's likely the same everywhere

copy paste:
    edit.copy()
    sleep(50ms)
    edit.paste()


pipe to (clipboard|clip): user.terminal_pipe_to_clipboard() 

