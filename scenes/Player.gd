extends KinematicBody2D


func _ready():
	pass


func _input(event):
	if event.is_action_pressed("ui_left"):
		self.position.x -= 1
	if event.is_action_pressed("ui_right"):
		self.position.x += 1


func _physics_process(delta):
	self.position.x = clamp(self.position.x, 2, get_viewport_rect().size.x - 2)
	self.position.y = clamp(self.position.y, 2, get_viewport_rect().size.y - 2)


func _process(delta):
	pass
	

