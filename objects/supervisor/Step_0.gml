// Setting the cursor sprite
window_set_cursor(cr_none)
cursor_sprite = cursor

// Adding option to change cursor with button press
var change_key = keyboard_check_pressed(vk_space)

if change_key {
	cursor_num += 1
}

switch(cursor_num){
	case 0: {
		cursor = crosshair_sprite_1	
	}break
	
	case 1: {
		cursor = crosshair_sprite_2	
	}break
	
	case 2: {
		cursor = crosshair_sprite_3	
	}break
	
	case 3: {
		cursor = crosshair_sprite_4
	}break
	
	case 4: {
		cursor = crosshair_sprite_5
	}break
	
}

if cursor_num > 4 {
	cursor_num = 0	
}
// Adding option for changing difficulty
var enter_key = keyboard_check_pressed(vk_enter)

if enter_key {
	mode_num += 1	
}

if mode_num > 1 {
	mode_num = 0	
}