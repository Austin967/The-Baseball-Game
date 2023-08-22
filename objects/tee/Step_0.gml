if mouse_check_button_pressed(mb_right){
	instance_destroy()
	ball.finished_setup = true
	
}

if place_meeting(x, y, terrain) {
	// Rise from ground
	y -= .5
}
else if place_meeting(x, y, oBoundary) {
	// Rise from ground
	y -= .5
}
else if place_meeting(x, y, oBoundary_1) {
	// Rise from ground
	y -= .5
}
else {
	// tell the ball that its done
	ball.finished_setup = true	
}