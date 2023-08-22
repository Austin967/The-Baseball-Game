
// Setting x and y depending on which side the player is aiming
if instance_exists(arrow) {
	if arrow.image_angle > 90 and arrow.image_angle < 270 {
		x = ball.x - 50
		sprite_index = bat_reversed_sprite
	}
	else {
		x = ball.x + 50
		sprite_index = bat_sprite
	}
}
y = ball.y


// Setting the frame index
frame_index += change_val / 10

frame_index = clamp(frame_index, 0, image_number)

if frame_index >= image_number {
	change_val = -1
}
else if frame_index <= 0 {
	change_val = 1
}

