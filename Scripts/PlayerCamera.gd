extends Camera2D

onready var player_target = get_parent().get_node('Player')

func _process(delta):
	position = player_target.position
