extends "res://Scripts/engine/entity.gd"


func _physics_process(delta):
	controls_loop()
	movement_loop()
	spritedir_loop()
	
	if is_on_wall():
		if spritedir == "left" and test_move(transform, Vector2(-1,0)):
			print("push")
		if spritedir == "right" and test_move(transform, Vector2(1,0)):
			print("push")
		if spritedir == "up" and test_move(transform, Vector2(0,-1)):
			print("push")
		if spritedir == "down" and test_move(transform, Vector2(0,1)):
			print("push")
	#elif		
	if movedir != Vector2(0,0):
		anim_switch("walk")
	else:
		anim_switch("idle")

func controls_loop():
	var LEFT	= Input.is_action_pressed("ui_left")
	var RIGHT	= Input.is_action_pressed("ui_right")
	var UP		= Input.is_action_pressed("ui_up")
	var DOWN	= Input.is_action_pressed("ui_down")
	
	movedir.x = -int(LEFT) + int(RIGHT)
	movedir.y = -int(UP) + int(DOWN)
	





