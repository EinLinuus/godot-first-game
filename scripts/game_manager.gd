extends Node

var score = 0

@onready var score_label = $"../Texts/Coins Count"

func add_point():
	add_points()

func add_points(points_to_add = 1):
	score += points_to_add
	score_label.text = "Coins: " + str(score)
	print("new score: ", score)
