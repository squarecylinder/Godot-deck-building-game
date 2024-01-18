extends Node2D

func _ready() -> void:
	add_child(preload("res://Scenes/Characters/Select/character_select.tscn").instantiate())
