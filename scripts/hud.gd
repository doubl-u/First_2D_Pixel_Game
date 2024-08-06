extends CanvasLayer
@onready var counter = $Counter
@onready var game_manager = %GameManager

var count = 0


func current_score():
	count += 1
	counter.text = str(count).pad_zeros(2) + "/" + str(game_manager.total_coins)

func _ready():
	counter.text = "00" + "/" + str(game_manager.total_coins)
