# TODO: check wether answered heck is still necessary
date (insert | answered): insert(user.time_format("%Y-%m-%d"))
date insert UTC: insert(user.time_format_utc("%Y-%m-%d"))
timestamp insert: insert(user.time_format("%Y-%m-%d %H:%M (%a,W%W)"))
timestamp insert high resolution: insert(user.time_format("%Y-%m-%d %H:%M:%S.%f"))
timestamp insert UTC: insert(user.time_format_utc("%Y-%m-%d %H:%M:%S"))
timestamp insert UTC high resolution:
    insert(user.time_format_utc("%Y-%m-%d %H:%M:%S.%f"))

# TODO: check wether answered heck is still necessary
time (insert | answered): insert(user.time_format("%H:%M"))

# custom
week insert: insert(user.time_format("W%W"))
