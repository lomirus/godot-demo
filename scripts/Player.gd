extends KinematicBody2D

var arms
var legs

func _ready():
	arms = self.get_node("Arms")
	legs = self.get_node("Legs")


func _input(event):
	if event.is_action_pressed("defense"):
		arms.animation = "defense"
		$Defense.play()
	if event.is_action_released("defense"):
		arms.animation = "normal"
	if event.is_action_pressed("attack"):
		arms.animation = "attack"
		$Attack.play()
	if event.is_action_released("attack"):
		arms.animation = "normal"

func _physics_process(_delta):
	if Input.is_action_pressed("ui_left") || Input.is_action_pressed("ui_right"):
		legs.animation = 'run'
		if Input.is_action_pressed("ui_left"):
			self.position.x -= 3
			self.scale = Vector2(-1, 1)
		if Input.is_action_pressed("ui_right"):
			self.position.x += 3
			self.scale = Vector2(1, 1)
	if Input.is_action_just_released("ui_left") || Input.is_action_just_released("ui_right"):
		legs.animation = 'stand'
	self.position.x = clamp(self.position.x, 2, get_viewport_rect().size.x - 2)
	self.position.y = clamp(self.position.y, 2, get_viewport_rect().size.y - 2)


func _process(_delta):
	pass
	

