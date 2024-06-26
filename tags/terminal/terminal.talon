tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file

lisa: user.terminal_list_directories()
lisa all: user.terminal_list_all_directories()
lisa details: user.terminal_list_all_directories_detailed()
katie [dir]: user.terminal_change_directory("")
katie root: user.terminal_change_directory_root()
katie (up | back | upwards): user.terminal_change_directory("..")

go <user.system_path>: insert('cd "{system_path}"\n ls\n')
path <user.system_path>: insert('"{system_path}"')
<user.system_path> path: insert('"{system_path}"')

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

pipe to (clipboard | clip): user.terminal_pipe_to_clipboard()
