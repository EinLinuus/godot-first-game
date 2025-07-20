extends Control

@onready var your_coins: RichTextLabel = $YourCoins

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameState.stopCurrentRun()
	your_coins.text = "Your coins: " + str(GameState.get_points())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")
