extends Node2D

onready var pc_minigame = $pcMinigame
var passed = false

var interativo = false

func _on_PcMinigameArea_body_entered(body):
	if body.name == "Player" and not passed:
		pc_minigame.frame = 1
		get_node("pcMinigame/Label").visible = true
		interativo = true

func _on_PcMinigameArea_body_exited(body):
	if body.name == "Player":
		pc_minigame.frame = 0
		get_node("pcMinigame/Label").visible = false
		interativo = false
		
func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_E and event.pressed and interativo:
			interativo = false
			get_tree().change_scene("res://ArenaSoftware/SoftwareMinigame/Minigame.tscn")
			
