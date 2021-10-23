extends Node2D

var counter : int = 0
var monkey_position

func counter_up():
	counter += 1
	
func new_position(pos):
	monkey_position = pos
	
func get_counter():
	return counter

func get_position():
	return monkey_position
