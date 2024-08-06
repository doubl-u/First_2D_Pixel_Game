extends Control
@onready var click = $Click
@onready var menu_timer = $MainMenuButton/MenuTimer
@onready var retry_timer = $RetryButton/RetryTimer
@onready var settings_timer = $SettingsButton/SettingsTimer


func _physics_process(_delta):
	if Input.is_action_just_pressed("Skip"):
		_on_main_menu_button_pressed()

func _on_main_menu_button_pressed():
	click.playing = true
	menu_timer.start()
	
func _on_menu_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/title_menu.tscn")


func _on_settings_button_pressed():
	Global.previous_scene = scene_file_path
	click.playing = true
	settings_timer.start()

func _on_settings_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/settings.tscn")
	
	
func _on_retry_button_pressed():
	click.playing = true
	retry_timer.start()

func _on_retry_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/game.tscn")



