extends "res://entities/AbstractState.gd"

func enter():
	parent._play_animation("dead")
	var sfx = load("res://assets/audio/bgm/gameOver.ogg")
	$"../../PlayerSfx".stream = sfx
	$"../../PlayerSfx".play()
	

func update(delta):
	parent._handle_deacceleration()
	parent._apply_movement()


func _on_animation_finished(anim_name:String):
	parent._remove()