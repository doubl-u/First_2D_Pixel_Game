extends Node

var score = 0
var total_coins = 0


@onready var coins = $"../Coins"

@onready var score_label = $ScoreLabel
@onready var timer = $Timer


func add_point():
	score += 1
	score_label.text = "You Have Collected " + str(score) + " Coins!"
	if score == total_coins:
		Engine.time_scale = 0.5
		timer.start()


func _ready():
	total_coins = coins.get_child_count()
	print("Total number of coins: ", total_coins)

	
func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://scenes/you_win.tscn")
