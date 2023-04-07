gamepad(left_xy:repeat):
    x = x * 20
    y = y * -60
    mouse_scroll(y, x)

# ps4 arrows
gamepad(dpad_up:down): key("up:down")
gamepad(dpad_up:up): key("up:up")
gamepad(dpad_down:down): key("down:down")
gamepad(dpad_down:up): key("down:up")
gamepad(dpad_right:down): key("right:down")
gamepad(dpad_right:up): key("right:up")
gamepad(dpad_left:down): key("left:down")
gamepad(dpad_left:up): key("left:up")

# ps4 symbols
gamepad(north): key("escape")
gamepad(south): key("enter")
gamepad(east): key("delete")
gamepad(west): key("backspace")

# TODO: make these toggle
# ps4 options
gamepad(start): speech.disable()
# ps4 share
gamepad(select): speech.enable()


gamepad(r1:down): key("shift:down")
gamepad(r1:up): key("shift:up")
gamepad(l1:down): key("alt:down")
gamepad(l1:up): key("alt:up")
gamepad(r2:down): key("ctrl:down")
gamepad(r2:up): key("ctrl:up")
gamepad(l2:down): key("super:down")
gamepad(l2:up): key("super:up")

    
gamepad(right_xy:repeat):
    mx = mouse_x()
    my = mouse_y()
    x = x * 25
    y = y * 25
    mouse_move(mx + x, my - y)