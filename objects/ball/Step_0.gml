
// Key Mapping
var mouse_key_pressed = mouse_check_button_pressed(mb_left)
var mouse_key_released = mouse_check_button_released(mb_left)

// Health
if strikes > 3 {
	// Reset
	strikes = 0
}

// States
function shoot(final_power) {
	// Play hit sound
	audio_play_sound(hit_sound, 11, false)
	// Decrement moves
	moves -= 1
	// Shoot ball
	direction = point_direction(x, y, player_ui.diff_x + x, player_ui.diff_y + y)
	speed = player_ui.strength + final_power
	// Change state to moving
	state = bState.normal
}

switch (state) {
	case bState.normal: {
		// resetting setup vars
		finished_setup = false
		instance_destroy(tee)
		instance_destroy(bat)
		if override and mouse_key_released {
			shoot(0)
		}
	}break
	
	case bState.setup: {
		moves = 1
		// Checking for bat 
		if finished_setup and mouse_key_pressed{
			if instance_exists(supervisor){
				if supervisor.collected_bat_1 and supervisor.collected_bat_2 and instance_number(bat) < 1{
					instance_create_layer(x, y, "Instances", bat)
				}
			}
		}
		// If the bat pieces aren't collected then don't shoot off of bat
		else if finished_setup and mouse_key_released and instance_exists(arrow){
			if instance_exists(supervisor){
				if !supervisor.collected_bat_1 or !supervisor.collected_bat_2{
					shoot(0)
				}	
			}
			else {
				shoot(0)	
			}
			
		}
		// Else the player can't move
		else {
			missed = true
			speed = 0
			if instance_exists(tee) {
				x = tee.x
				y = tee.y - 5
			}	
		}
	}break
}

