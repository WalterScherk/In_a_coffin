extends Node2D

func SpawnText(text):
	var rng = RandomNumberGenerator.new()
	var touchButton = TouchScreenButton.new()
	var label = Label.new()
	
	var xPos = rng.randf_range(60, 1000)
	var yPos = rng.randf_range(60, 580)
	touchButton.position = Vector2(xPos, yPos)
	
	label.position = touchButton.position
	
	label.text = text
	add_child(touchButton)
	add_child(label)


	
