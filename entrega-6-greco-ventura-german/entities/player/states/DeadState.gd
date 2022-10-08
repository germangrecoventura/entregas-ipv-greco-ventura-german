extends "res://entities/AbstractState.gd"
onready var player_sfx = $"../../PlayerSfx"

func enter():
	parent._play_animation("dead")
	var sfx = load("res://assets/audio/bgm/gameOver.ogg")
	player_sfx.stream = sfx
	player_sfx.play()
	

func update(delta):
	parent._handle_deacceleration()
	parent._apply_movement()


func _on_animation_finished(anim_name:String):
	parent._remove()
