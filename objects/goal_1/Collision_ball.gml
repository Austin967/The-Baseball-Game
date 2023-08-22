/// @description Send to another room
ball.speed = 0
if instance_exists(supervisor) {
	supervisor.collected_bat_1 = true	
}
room_goto(room_destination)

