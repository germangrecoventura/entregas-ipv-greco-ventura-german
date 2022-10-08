extends "res://entities/AbstractStateMachine.gd"
onready var player_sfx = $"../PlayerSfx"

func _ready():
	states_map = {
		"idle": $Idle,
		"walk": $Walk,
		"jump": $Jump,
		"dead": $Dead,
		"dash": $Dash
	}


func notify_hit(amount):
	var sfx = load("res://assets/audio/sfx/playerHurt.wav")
	player_sfx.stream = sfx
	player_sfx.play()
	PlayerData.current_health += min(amount, PlayerData.max_health)
	print(PlayerData.current_health)
	if PlayerData.current_health == 0:
		_change_state("dead")
