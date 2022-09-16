extends "res://entities/AbstractState.gd"

func handle_input(event:InputEvent):
	if event.is_action_pressed("jump") && parent.is_on_floor():
		emit_signal("finished","jump")
	
	if (event.is_action_pressed("dash-left")):
		emit_signal("finished","dash-left")
		
	if (event.is_action_pressed("dash-right")):
		emit_signal("finished","dash-right")

func update(delta):
	parent._handle_cannon_actions()
	parent._handle_move_input()
	parent._apply_movement()
	if parent.move_direction == 0:
		emit_signal("finished", "idle")
