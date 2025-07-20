extends Area2D

@export_file("*.tscn") var next_level_path: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	GameState.onLevelFinish()
	if next_level_path and not next_level_path.is_empty():
		get_tree().change_scene_to_file(next_level_path)
	else:
		print("ERROR: No next level defined")
	pass # Replace with function body.
