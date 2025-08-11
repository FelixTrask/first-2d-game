extends Node2D

func _on_area_2d_body_entered(body):
	if body is Player:
		GameController.reset_scene()
		self.queue_free()
