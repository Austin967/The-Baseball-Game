

// Adding leave option
var esc_key = keyboard_check_pressed(vk_escape)

if esc_key {
	room_goto(main_menu)
}

// Drawing the Arrow
var mouse_key_pressed = mouse_check_button_pressed(mb_left)
var mouse_key_released = mouse_check_button_released(mb_left)
var mouse_key = mouse_check_button(mb_left)


if mouse_key_pressed and ball.finished_setup {
	start_x = mouse_x
	start_y = mouse_y
	
	instance_create_layer(ball.x, ball.y, "Instances", arrow)
}

if mouse_key_released {
	instance_destroy(arrow)
}

// Setting Arrow object to point in aim direction and stretch
if instance_exists(arrow){
	arrow.image_xscale = strength / 10
	arrow.image_yscale = strength / 10
	arrow.image_angle = point_direction(diff_x + start_x, diff_y + start_y, start_x, start_y)
}

if mouse_key and ball.finished_setup and instance_exists(arrow){
	diff_x = start_x - mouse_x
	diff_y = start_y - mouse_y
	
	
	//draw_arrow(ball.x, ball.y, diff_x + ball.x, diff_y + ball.y, 20)
	
	// drawing extra elements for ball when player clicks //
	// draw starting x and y 
	draw_text(start_x, start_y, "X")
	// draw powerbar
	draw_healthbar(1266, 50, 1316, 250, (strength / max_strength) * 100, c_black, c_red, c_lime, 3, true, true)
	// draw text in center of powerbar thing
	draw_text(1366 - 75, 150, string(int64(strength * 2)))
	
}

// Power meter
strength = point_distance(start_x, start_y, mouse_x, mouse_y) / 10

strength = clamp(strength, 0, max_strength)


// Mode Management
switch(mode) {
	// Adventure Mode ( default )
	case 0: {
		// Displaying Controls text in corner
		draw_text(room_width/2, 100, "ESC: Leave\nClick & Drag: Move\nSpace: Change Cursor")
		// Drawing the Strikes
		if ball.strikes == 1 {
			strike_txt = "X"	
		}
		else if ball.strikes == 2 {
			strike_txt = "X X"	
		}
		else if ball.strikes == 3 {
			strike_txt = "X X X"	
		}
		else {
			strike_txt = " "	
		}

		draw_text_transformed_color(150, 150, strike_txt, 3, 3, 0, c_red, c_red, c_red, c_red, 1)

		// Drawing Score
		draw_text_transformed(150, 250, "Score: " + string(p_score), 2, 2, 0)
	}
	// Other Modes Go below
	/*
	case 1: {
			
	}
	*/
}


