extends "res://entities/AbstractState.gd"

func enter():
	return

func update(delta:float):
	parent.apply_movement()
