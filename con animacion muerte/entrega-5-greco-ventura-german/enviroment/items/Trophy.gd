extends Area2D

# warning-ignore:unused_argument
func _on_Trophy_body_entered(body):
	$"../../CanvasLayer/AnimationPlayer".play("fade")
	get_tree().get_nodes_in_group("ui")[0].text = "You Win!"
	#print("You win!")
	GameState.notify_level_won()
