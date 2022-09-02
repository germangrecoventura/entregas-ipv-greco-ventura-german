extends Sprite

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_pressed("mover_izq")):
		position.x -= 100 * delta
	elif(Input.is_action_pressed("mover_der")):
		position.x += 100 * delta
