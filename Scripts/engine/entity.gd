extends KinematicBody2D

export var SPEED = 70*6

var movedir = Vector2(0, 0)
var spritedir = "down"

func movement_loop():
	var velocity  = movedir.normalized() * SPEED
	move_and_slide(velocity, Vector2())
	
func spritedir_loop():
	match movedir:
		Vector2(-1,0):
			spritedir = "left"
		Vector2(1,0):
			spritedir = "right"
		Vector2(0,-1):
			spritedir = "up"
		Vector2(0,1):
			spritedir = "down"

func anim_switch(animation):
	var newanim = str(animation, spritedir)
	if $anim.current_animation != newanim:
		$anim.play(newanim)
