gamepad(left_xy:repeat):
    x = x * 20
    y = y * -60
    mouse_scroll(y, x)

gamepad(north): key("up")
gamepad(start): key("up")
gamepad(select): key("up")

    
gamepad(right_xy:repeat):
    mx = mouse_x()
    my = mouse_y()
    x = x * 25
    y = y * 25
    mouse_move(mx + x, my - y)