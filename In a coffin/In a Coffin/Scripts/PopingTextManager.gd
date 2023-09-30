extends Node2D

func SpawnText(text):
	var touchButton = TouchScreenButton.new()
	var label = Label.new()
	
	label.text = text
	add_child(touchButton)
	add_child(label)
