/// @description Send ball to other room
ball.speed = 0
if instance_exists(supervisor) {
	supervisor.collected_bat_2 = true	
}
room_goto(room_destination)