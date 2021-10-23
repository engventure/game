extends Area2D

onready var anim = $AnimatedSprite
var interativo = false

func _ready():
	anim.stop()
	anim.frame = 0

func _on_MinijogoAero_body_entered(body):
	if body.name == "Player":
		$Label.visible = true
		interativo = true
		anim.frame = 1

func _on_MinijogoAero_body_exited(body):
	if body.name == "Player":
		$Label.visible = false
		interativo = false
		anim.frame = 0
		
func _input(event):
	if Input.is_key_pressed(KEY_E) and interativo == true:
		interativo = false
		$Label.visible = false
		get_tree().change_scene("res://ArenaAero/AeroMinigame/MinigameAero.tscn")
