tag: terminal
and tag: user.git
-
git {user.git_command} [<user.git_arguments>]:
    args = git_arguments or ""
    "git {git_command}{args} "
# I added the $ anchor to prevent commands like "my name" 
# to get executed at the end
# I could do something with "over" if I want to be able to chain it again
git commit [<user.git_arguments>] message [<user.prose>]$:
    args = git_arguments or ""
    message = prose or ""
    user.insert_between('git commit{args} --message "{message}', '"')
git stash [push] [<user.git_arguments>] message [<user.prose>]$:
    args = git_arguments or ""
    message = prose or ""
    user.insert_between('git stash push{args} --message "{message}', '"')

# Optimistic execution for frequently used commands that are harmless (don't
# change repository or index state).
git status$: "git status\n"
git fetch$: "git fetch\n"
git add patch$: "git add --patch\n"
git show head$: "git show HEAD\n"
git diff (cached | cashed)$: "git diff --cached\n"
git remote prune origin: "git remote prune origin\n"

# Convenience
git clone clipboard:
    insert("git clone ")
    edit.paste()
    key(enter)
git diff highlighted:
    edit.copy()
    insert("git diff ")
    edit.paste()
    key(enter)
git diff clipboard:
    insert("git diff ")
    edit.paste()
    key(enter)
git add highlighted:
    edit.copy()
    insert("git add ")
    edit.paste()
    key(enter)
git add clipboard:
    insert("git add ")
    edit.paste()
    key(enter)
git commit highlighted:
    edit.copy()
    insert("git add ")
    edit.paste()
    insert("\ngit commit\n")

git config email: user.insert_between('git config --local user.email "', '"')
git config name: user.insert_between('git config --local user.name "', '"')
