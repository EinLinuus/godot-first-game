extends Area2D

@onready var game_manager = %GameManager

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	# Note: to make sure only players can collide with a coin,
	# the player is set to collision layer 2 (Player / Inspector / Collision / Layer)
	# and the coin's collision mask is also set to layer 2 (Coin / Inspector / Collision / Layer)
	queue_free()
	game_manager.add_point()
	pass # Replace with function body.
