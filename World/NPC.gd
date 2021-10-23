extends Area2D

var interativo = false
onready var dialog = preload("res://CaixasDeTexto/chitchat_rabbit.tscn")
onready var continua = preload("res://CaixasDeTexto/chitchat_rabbit_continue.tscn")
onready var car = preload("res://CaixasDeTexto/chitchat_rabbit_car.tscn")
onready var almost = preload("res://CaixasDeTexto/chitchat_rabbit_almost.tscn")

func _physics_process(delta):
	$AnimatedSprite.play()

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		$Label.visible = true
		interativo = true


func _on_Area2D_body_exited(body):
	if body.name == "Player":
		$Label.visible = false
		interativo = false

func _input(event):
	if Input.is_key_pressed(KEY_E) and interativo == true:
		$Label.visible = false
		interativo = false
		if LevelHandler.get_counter() == 0:
			var dialogo = dialog.instance()
			get_parent().add_child(dialogo)
		elif LevelHandler.get_counter() < 3:
			var continuation = continua.instance()
			get_parent().add_child(continuation)
		elif LevelHandler.get_counter() == 3:
			var carro = car.instance()
			get_parent().add_child(carro)
		elif LevelHandler.get_counter() == 4:
			var quase = almost.instance()
			get_parent().add_child(quase)
