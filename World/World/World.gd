extends Node2D

onready var counter = get_node("/root/LevelHandler")
onready var counter_number = LevelHandler.get_counter()
onready var player = get_node("YSort/Player")
onready var npc = get_node("YSort/NPC")

var software_walk_in = false
var eletro_walk_in = false
var energy_walk_in = false
var auto_walk_in = false
var aero_walk_in = false

func _ready():
	print(counter_number)
	if counter_number == 0:
		software_walk_in = true
	if counter_number == 1:
		eletro_walk_in = true
		npc.global_position = Vector2(840, 75)
		player.global_position = counter.get_position()
	if counter_number == 2:
		energy_walk_in = true
		npc.global_position = Vector2(840, 75)
		player.global_position = counter.get_position()
	if counter_number == 3:
		auto_walk_in = true
		npc.global_position = Vector2(1572, 164)
		player.global_position = counter.get_position()
	if counter_number == 4:
		aero_walk_in = true
		npc.global_position = Vector2(2109, 214)
		player.global_position = counter.get_position()
	if counter_number == 5:
		get_tree().change_scene("res://Menu/outro.tscn")
