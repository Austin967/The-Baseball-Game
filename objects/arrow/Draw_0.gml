// Setting stretch based on power of hit
image_xscale = player_ui.strength / 20
image_yscale = player_ui.strength / 20

// Making the arrow show when the player is out of setup
if instance_exists(ball){
	if ball.finished_setup {
		image_alpha = 1
	}	
	else {
		image_alpha = 0	
	}
}

draw_self()