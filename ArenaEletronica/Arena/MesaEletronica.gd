extends Area2D

onready var mesa = $AnimatedSprite
var interativo = false

func _on_MinijogoEeletronica_body_entered(body):
	if body.name == "Player":
		var interativo = true
		mesa.frame = 0
		get_node("Label").visible = true

func _on_MinijogoEeletronica_body_exited(body):
	if body.name == "Player":
		var interativo = false
		mesa.frame = 1
		get_node("Label").visible = false

func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_E and event.pressed and interativo:
			interativo = false
			get_tree().change_scene("res://ArenaEletronica/EletronicaMinigame/MinigameEletro.tscn")
		
