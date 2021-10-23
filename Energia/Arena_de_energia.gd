extends Node2D

var interativo = false

func _on_MinigameStart_body_entered(body):
	if body.name == "Player":
		get_node("MinigameStart/Label").visible = true
		interativo = true


func _on_MinigameStart_body_exited(body):
	if body.name == "Player":
		get_node("MinigameStart/Label").visible = false
		interativo = false

func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_E and event.pressed and interativo:
			interativo = false
			get_tree().change_scene("res://ArenaEnergia/EnergiaMinigame/MinigameEnergia.tscn")
