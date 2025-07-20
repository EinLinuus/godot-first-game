extends Node

@export var levelNumber: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Level started for level ", levelNumber)
	GameState.startNewRun()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_pressed("exit_to_home"):
		get_tree().change_scene_to_file("res://scenes/game.tscn")
	
	pass
