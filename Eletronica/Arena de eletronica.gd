extends Node2D

onready var mesa = $tableMinigame
var interativo = false

func _ready():
	mesa.frame = 0

func _on_EletroStart_body_entered(body):
	if body.name == "Player":
		mesa.frame = 1
		get_node("tableLabel").visible = true
		interativo = true

func _on_EletroStart_body_exited(body):
	if body.name == "Player":
		mesa.frame = 0
		get_node("tableLabel").visible = false
		interativo = false
		
func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_E and event.pressed and interativo:
			interativo = false
			get_tree().change_scene("res://ArenaEletronica/EletronicaMinigame/MinigameEletro.tscn")
			
