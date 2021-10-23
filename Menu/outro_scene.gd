extends VideoPlayer

func _on_outro_scene_finished():
	get_tree().change_scene("res://Menu/menu.tscn")
	pass
