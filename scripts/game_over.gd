extends Control

func _physics_process(delta):
	if Input.is_action_just_pressed("Skip"):
		_on_main_menu_button_pressed()

func _on_main_menu_button_pressed():
	get_tree().change_scene_to_file("res://scenes/title_menu.tscn")
