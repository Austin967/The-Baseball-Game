randomize()
// Movement
gravity = .5
gravity_direction = 270

moves = 1

start_x = 0
start_y = 0

diff_x = 0
diff_y = 0

spin_speed = speed

// Missed Check
missed = false

// Health
strikes = 0

// States
state = bState.normal
finished_setup = false
override = false

enum bState {
	normal,
	setup
}
