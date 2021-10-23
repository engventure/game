extends Area2D

var interativo = false

func _on_FaixadaAutomotiva_body_entered(body):
	var go_in = get_parent().auto_walk_in
	if body.name == "Player" and go_in:
		interativo = true
		get_node("Label2").visible = true

func _on_FaixadaAutomotiva_body_exited(body):
	if body.name == "Player":
		interativo = false
		get_node("Label2").visible = false

func _input(event):
	if Input.is_key_pressed(KEY_E) and interativo:
		interativo = false
		LevelHandler.counter_up()
		LevelHandler.new_position(get_parent().get_node("YSort/Player").global_position)
		get_tree().change_scene("res://ArenaAutomotiva/ArenaAutomotiva/ArenaAutomotiva.tscn")
