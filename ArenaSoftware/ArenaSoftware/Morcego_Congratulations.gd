extends Area2D

var interativo = false
var successed = false
const dialog = preload("res://CaixasDeTexto/Chitchat_Bat&MonkeyCongratulations.tscn")

func _ready():
	$batNpcSprite.play("default")

func _on_Morcego_Congratulations_body_entered(body):
	if body.name == "Player":
		$Label.visible = true
		interativo = true

func _on_Morcego_Congratulations_body_exited(body):
	if body.name == "Player":
		$Label.visible = false
		interativo = false

func _input(event):
	if Input.is_key_pressed(KEY_E) and interativo == true and not successed:
		interativo = false
		$Label.visible = false
		var dialogo = dialog.instance()
		get_parent().add_child(dialogo)
