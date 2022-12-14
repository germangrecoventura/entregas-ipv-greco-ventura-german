extends Sprite
class_name Projectile

var direction:Vector2

signal delete_requested(projectile)

export (float) var speed

func _ready():
	set_physics_process(false)
	
func set_starting_values(starting_position:Vector2, direction:Vector2):
	global_position = starting_position
	self.direction = direction
	set_physics_process(true)
	
func _process(delta):
	position += direction * speed * delta
