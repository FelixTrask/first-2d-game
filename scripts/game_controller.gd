extends Node

var total_coins: int = 0
var coin_goal: int = 10

func coin_collected(value: int) -> void:
	total_coins += value
	EventController.emit_signal("coin_collected", total_coins)

	if total_coins == coin_goal:
		end_game()

func end_game() -> void:
	get_tree().change_scene_to_file("res://scenes/endgame.tscn")

func reset_scene() -> void:
	total_coins = 0
	get_tree().reload_current_scene()
