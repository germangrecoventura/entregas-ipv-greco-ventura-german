extends Node

export(NodePath) var pathfinding:NodePath

func _ready():
	if pathfinding.is_empty():
		return
		
	var pathfinder:PathfindAstar = get_node(pathfinding)
	if pathfinder == null:
		return
	
	var turrets = get_tree().get_nodes_in_group("ia")
	for turret in turrets:
		turret.pathfinding = pathfinder
