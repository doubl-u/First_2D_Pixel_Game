extends Control

@onready var play_timer = $Play/PlayTimer
@onready var quit_timer = $Quit/QuitTimer
@onready var settings_timer = $SettingsButton/SettingsTimer
@onready var click = $Click



func _on_play_pressed():
	click.playing = true
	play_timer.start()

	
func _on_play_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_quit_pressed():
	click.playing = true
	quit_timer.start()


func _on_quit_timer_timeout():
	get_tree().quit()


func _on_settings_button_pressed():
	click.playing = true
	settings_timer.start()


func _on_settings_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/settings.tscn")
