extends Area2D

var interativo = false
const dialog = preload("res://CaixasDeTexto/Goat&Monkey_Congratulations.tscn")

func _on_BodeInterao_body_entered(body):
	if body.name == "Player":
		$Label.visible = true
		interativo = true

func _on_BodeInterao_body_exited(body):
	if body.name == "Player":
		$Label.visible = false
		interativo = false

func _input(event):
	if Input.is_key_pressed(KEY_E) and interativo == true:
		interativo = false
		$Label.visible = false
		var dialogo = dialog.instance()
		get_parent().add_child(dialogo)