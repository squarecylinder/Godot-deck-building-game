extends Node2D

@onready var left_necro: AnimatedSprite2D = $LeftNecro
@onready var right_necro: AnimatedSprite2D = $RightNecro

@export var char_stats: CharacterStats

const BATTLE_SCENE = preload("res://Scenes/StartScreen/MainGame/Battle/battle.tscn")

func _ready() -> void:
	left_necro.play("Idle")
	right_necro.play("Idle")

func _on_button_pressed() -> void:
	var new_battle_scene = BATTLE_SCENE.instantiate()
	var new_stats: CharacterStats = char_stats.create_instance()
	new_battle_scene.char_stats = new_stats
	get_parent().add_child(new_battle_scene)
	queue_free()

func _on_button_2_pressed() -> void:
	var new_battle_scene = BATTLE_SCENE.instantiate()
	var new_stats: CharacterStats = char_stats.create_instance()
	new_battle_scene.char_stats = new_stats
	get_parent().add_child(new_battle_scene)
	queue_free()

func _on_button_3_pressed() -> void:
	var new_battle_scene = BATTLE_SCENE.instantiate()
	var new_stats: CharacterStats = char_stats.create_instance()
	new_stats.max_health -= 10
	new_stats.cards_per_turn = 5
	new_battle_scene.char_stats = new_stats
	get_parent().add_child(new_battle_scene)
	queue_free()

func _on_button_4_pressed() -> void:
	var new_battle_scene = BATTLE_SCENE.instantiate()
	var new_stats: CharacterStats = char_stats.create_instance()
	new_battle_scene.char_stats = new_stats
	get_parent().add_child(new_battle_scene)
	queue_free()
