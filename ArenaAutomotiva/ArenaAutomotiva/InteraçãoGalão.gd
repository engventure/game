extends Area2D

var interativo = false

func _on_InteraoGalo_body_entered(body):
	if body.name == "Player":
		$Label.visible = true
		interativo = true

func _on_InteraoGalo_body_exited(body):
	if body.name == "Player":
		$Label.visible = false
		interativo = false


func _input(event):
	if Input.is_key_pressed(KEY_E) and interativo == true:
		interativo = false
		$Label.visible = false
		yield(get_tree().create_timer(0.5), "timeout")
		get_tree().change_scene("res://ArenaAutomotiva/AutoMinigame/MinigameAuto.tscn")
