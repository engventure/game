extends Node2D

const dialog = preload("res://CaixasDeTexto/Goat&Monkey_final.tscn")

var new_position = Vector2(1666, 280)
var go_back = false

func _ready():
	get_node("Player").global_position = new_position
	yield(get_tree().create_timer(0.5), "timeout")
	var dialogo = dialog.instance()
	get_parent().add_child(dialogo)


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		go_back = true
		get_node("Faixada Eletronica/tableLabel").visible = true


func _on_Area2D_body_exited(body):
	if body.name == "Player":
		go_back = false
		get_node("Faixada Eletronica/tableLabel").visible = false
		
func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_E and go_back:
			get_tree().change_scene("res://World/World/World.tscn")
