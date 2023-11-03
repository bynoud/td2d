extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$MainMenu/M/VB/NewGame.connect('pressed', on_new_game_pressed)
	$MainMenu/M/VB/Quit.connect('pressed', on_quit_pressed)
	
func on_new_game_pressed():
	$MainMenu.queue_free()
	var game_screen: PackedScene = load("res://screens/main_screens/game_screen.tscn")
	print(game_screen)
	add_child(game_screen.instantiate())
	
func on_quit_pressed():
	pass
