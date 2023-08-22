// Bounce and slow down
move_bounce_all(false)

speed /= 2


// Checking if we've stopped moving/landed
// Speed normally slows down to .17 
if state != bState.setup and speed < .2 {
	// change to setup
	state = bState.setup
	
	instance_create_layer(x, y, "Instances", tee)
	
	// Check if the player missed the target
	if missed {
		strikes += 1
	}
	
}