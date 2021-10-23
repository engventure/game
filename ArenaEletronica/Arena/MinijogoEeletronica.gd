extends Area2D

var interativo = false

func _on_MinijogoEeletronica_body_entered(body):
	if body.name == "Player":
		$Label.visible = true
		interativo = true

func _on_MinijogoEeletronica_body_exited(body):
	if body.name == "Player":
		$Label.visible = false
		interativo = false

func _input(event):
	if Input.is_key_pressed(KEY_E) and interativo == true:
		$Label.visible = false
		

