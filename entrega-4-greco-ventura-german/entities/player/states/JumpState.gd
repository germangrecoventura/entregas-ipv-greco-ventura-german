extends "res://entities/AbstractState.gd"

func enter():
	parent.velocity.y = -parent.jump_speed
	parent.snap_vector = Vector2.ZERO


func update(delta):
	#	if PlayerData.current_health == 0:
#		emit_signal("finished","dead")
	parent._handle_cannon_actions()
	parent._handle_move_input()
	parent._apply_movement()
	if parent.move_direction == 0:
		parent._handle_deacceleration()
	
	if parent.is_on_floor():
		if parent.move_direction != 0:
			emit_signal("finished", "walk")
		else:
			emit_signal("finished", "idle")
