extends VideoPlayer

func _on_first_scene_finished():
	get_tree().change_scene("res://World/World/World.tscn")
	pass
