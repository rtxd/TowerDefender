extends Sprite2D

const Missile = preload("res://prefabs/missile.tscn")

func _ready():
	pass 


func _process(delta):
	if Input.is_action_just_pressed("mouse_left"):
		print('mouse left clicked')
		var missile_instance = Missile.instantiate()
		add_child(missile_instance)

