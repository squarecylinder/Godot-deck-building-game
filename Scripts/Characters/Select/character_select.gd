class_name CharacterSelect
extends Node

const WARRIOR = preload("res://Resources/Characters/Warrior/warrior.tres")
const MAGE = preload("res://Resources/Characters/Mage/mage.tres")

@onready var warrior_button: TextureButton = %WarriorButton
@onready var mage_button: TextureButton = %MageButton

func _ready() -> void:
	get_tree().paused = false
	warrior_button.pressed.connect(_on_warrior_button_pressed)
	mage_button.pressed.connect(_on_mage_button_pressed)
	
func _on_warrior_button_pressed() -> void:
	var choice_scene = preload("res://Scenes/StartScreen/MainGame/StartingChoices/starting_choices.tscn").instantiate()
	choice_scene.char_stats = WARRIOR
	get_parent().add_child(choice_scene)
	queue_free()
	
func _on_mage_button_pressed() -> void:
	var choice_scene = preload("res://Scenes/StartScreen/MainGame/StartingChoices/starting_choices.tscn").instantiate()
	choice_scene.char_stats = MAGE
	get_parent().add_child(choice_scene)
	queue_free()
