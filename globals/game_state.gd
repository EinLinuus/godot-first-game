extends Node

var score = 0
var scoreThisRun = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Game state loaded!")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func get_points():
	return score

func add_point():
	add_points()

func add_points(points_to_add = 1):
	score += points_to_add
	scoreThisRun += points_to_add
	print("new score: ", score, " (this run: ", scoreThisRun, ")")

func onPlayerFall():
	score -= scoreThisRun
	scoreThisRun = 0
	print("whoops u dead")

func startNewRun():
	print("New run started")
	scoreThisRun = 0
	
func stopCurrentRun():
	print("Run stopped")
	score -= scoreThisRun
	scoreThisRun = 0
	
func onLevelFinish():
	print("Level complete!")
	scoreThisRun = 0
