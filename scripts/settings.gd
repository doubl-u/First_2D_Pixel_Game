extends Control

@onready var master_level = $Master/MasterLevel
@onready var music_level = $Music/MusicLevel
@onready var sfx_level = $SFX/SFXLevel
@onready var timer = $Timer
@onready var click = $Click

var master = AudioServer.get_bus_index("Master")
var master_volume = 0

var music = AudioServer.get_bus_index("Music")
var music_volume = 0

var sfx = AudioServer.get_bus_index("SFX")
var sfx_volume = 0

func _ready():
	$Master.value = db_to_linear(AudioServer.get_bus_volume_db(master))
	$Music.value = db_to_linear(AudioServer.get_bus_volume_db(music))
	$SFX.value = db_to_linear(AudioServer.get_bus_volume_db(sfx))

func _on_back_button_pressed():
	click.playing = true
	timer.start()
	
func _on_timer_timeout():
	if Global.previous_scene != "":
		get_tree().change_scene_to_file(Global.previous_scene)
	else:

		get_tree().change_scene_to_file("res://scenes/title_menu.tscn")


func _on_master_value_changed(value):
	master_volume = int(value  * 100)
	master_level.text = str(master_volume)
	AudioServer.set_bus_volume_db(master, linear_to_db(value))

func _on_music_value_changed(value):
	music_volume = int(value  * 100)
	music_level.text = str(music_volume)
	AudioServer.set_bus_volume_db(music, linear_to_db(value))
	

func _on_sfx_value_changed(value):
	sfx_volume = int(value * 100)
	sfx_level.text = str(sfx_volume)
	AudioServer.set_bus_volume_db(sfx,linear_to_db(value))
