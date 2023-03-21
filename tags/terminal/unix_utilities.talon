tag: user.unix_utilities
-

# curated list of commands with defined arguments:
core {user.unix_utility} [<user.unix_arguments>] [over]:
    "{unix_utility}{unix_arguments or ''} "

# standalone arguments (predefined arguments preferred)
# TODO: find out why over is sometimes recognized by the unix_free_form_argument
# and sometimes not
# TODO: think about splitting it up like flag
param [<user.unix_free_form_argument>] [over]:
    insert(" --{unix_free_form_argument or ''} ")
param (single | sing) [<user.unix_free_form_argument>] [over]:
    insert(" -{unix_free_form_argument or ''} ")

flag <user.letters>: " -{letters} "
flag: " -"
# flag shift/ship/uppercase <letter> produces the uppercase variant

# double dashes allow signify the end of options in most utilities, to allow e.g.
# grepping for the string '--help': 'grep -- --help file'
command sep: " -- "
