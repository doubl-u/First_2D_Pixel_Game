extends Control



func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	
	

func _on_quit_pressed():
	get_tree().quit()



func _on_settings_button_pressed():
	get_tree().change_scene_to_file("res://scenes/settings.tscn")
