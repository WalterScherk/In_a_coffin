extends Node2D



func _on_texture_button_2_pressed():
	get_tree().change_scene_to_file("res://Scenes/Coffin.tscn")


func _on_texture_button_pressed():
	get_tree().quit()
	print("destroy window")


func _on_try_again_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
