extends Node2D

func SpawnText(text):
	var rng = RandomNumberGenerator.new()
	var touchButton = Button.new()
	var font = load("res://Fonts/UnfinishedScreamRegular.otf")
	
	touchButton.text = text
	#touchButton.font = font.fallbacks[]
	
	var xPos = rng.randf_range(60, 1000)
	var yPos = rng.randf_range(60, 580)
	touchButton.position = Vector2(xPos, yPos)
	add_child(touchButton)
