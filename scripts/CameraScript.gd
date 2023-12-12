extends Camera2D

var speed = 20  # Speed of camera movement

# Called when the node enters the scene tree for the first time.
func _ready():
	self.position = Vector2(100, 40)
	self.zoom = Vector2(8, 8)  # Zoom in by 50%

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed('ui_left'):
		self.position.x -= speed * delta
	if Input.is_action_pressed('ui_right'):
		self.position.x += speed * delta
