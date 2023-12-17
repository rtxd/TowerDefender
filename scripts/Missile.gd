extends Area2D

@export var mass := 0.25

var velocity = Vector2(1,3)

func _init(bulletSpawnPos: Vector2):
	print('init')
	position = bulletSpawnPos
	pass
	
func _process(delta):
	print('process')
	velocity += gravity_direction*gravity*mass
	position += velocity * delta
	rotation = velocity.angle()

