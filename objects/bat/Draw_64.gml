
// Swing Management
var start_key = mouse_check_button_released(mb_left)

// Checking for start of swing
if start_key {
	image_index = 0
	started_swing = true
	
}
// Checking for final swing
if started_swing and image_index >= image_number - 1 {
	finished_anim = true
	image_index = image_number - 1
}

if finished_anim {
	ball.shoot(0)	
}