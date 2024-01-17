extends Node

@export var SAVED_GAME : String

@onready var load_game = $MainBackground/VBoxContainer/LoadGame

func _process(_delta):
	if not SAVED_GAME:
		load_game.disabled = true

func load_saved_game(_save):
	pass

func open_settings():
	print("You opened the settings menu! Well when its done you would have...")
	pass

func _on_start_game_pressed():
	get_tree().change_scene_to_packed(preload("res://Scenes/Battle/battle.tscn"))

func _on_load_game_pressed():
	load_saved_game("SAVE")

func _on_settings_pressed():
	open_settings()
