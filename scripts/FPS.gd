extends Label


func _process(delta):
	if delta != 0:
		self.text = String(1 / delta)
