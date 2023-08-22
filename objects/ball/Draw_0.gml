

if direction > 90 and direction < 270 {
	spin_speed = speed	
}
else {
	spin_speed = -speed
}
if speed > .5 {
	image_angle += spin_speed
}

draw_self()