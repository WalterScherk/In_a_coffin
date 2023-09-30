extends Node2D

func SpawnText(text):
	var rng = RandomNumberGenerator.new()
	var xPos = rng.randf_range(60, 1000)
	var yPos = rng.randf_range(60, 580)
	var touchButton = TouchScreenButton.new()
	var label = Label.new()
	
	label.position = Vector2(xPos, yPos)
	
	
	label.text = text
	add_child(touchButton)
	add_child(label)
