extends Node2D

onready var pc_minigame = $pcMinigame

func _on_PcMinigameArea_body_entered(body):
	pc_minigame.frame = 1
	get_node("pcMinigame/Label").visible = true

func _on_PcMinigameArea_body_exited(body):
	pc_minigame.frame = 0
	get_node("pcMinigame/Label").visible = false
