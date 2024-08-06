extends Control

@onready var click = $Click



func _on_main_menu_pressed():
	click.playing = true
	$Timer.start()
	
func _on_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/title_menu.tscn")
