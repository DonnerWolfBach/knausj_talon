tag: user.address
-
go [to] <user.address>: user.address_navigate(address)

address copy | copy path | url copy | copy address | copy url:
    user.address_copy_address()
address bar | go address | go url: user.address_focus()

# TODO: "" or not depending on context
path <user.system_path>: insert('"{system_path}"')
<user.system_path> path: insert('"{system_path}"')