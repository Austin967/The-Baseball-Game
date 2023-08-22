/// @description Send ball to overworld

if instance_exists(ball) {
	if ball.x > room_width or ball.x < 0 or ball.y > room_height{
		room_restart()
	}
}