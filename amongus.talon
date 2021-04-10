control mouse: user.mouse_toggle_control_mouse()
zoom mouse: user.mouse_toggle_zoom_mouse()
camera overlay: user.mouse_toggle_camera_overlay()
run calibration: user.mouse_calibrate()	
touch: 
	mouse_click(0)
	# close the mouse grid if open
	user.grid_close()

righty: 
	mouse_click(1)
	# close the mouse grid if open
	user.grid_close()

midclick: 
	mouse_click(2)
	# close the mouse grid
	user.grid_close()

drag: 
	user.mouse_drag()
	# close the mouse grid
	user.grid_close()

M grid:
    user.grid_select_screen(1)
    user.grid_activate()

grid win:
    user.grid_place_window()
    user.grid_activate()

grid <user.number_key>+:
    user.grid_activate()
    user.grid_narrow_list(number_key_list)

grid screen [<number>]:
    user.grid_select_screen(number or 1)
    user.grid_activate()


<phrase>:skip()
