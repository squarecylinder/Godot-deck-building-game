class_name CharacterSelect
extends Node

const WARRIOR = preload("res://Resources/Characters/Warrior/warrior.tres")
const MAGE = preload("res://Resources/Characters/Mage/mage.tres")

@onready var warrior_button: TextureButton = %WarriorButton
@onready var mage_button: TextureButton = %MageButton

func _ready() -> void:
	warrior_button.pressed.connect(_on_warrior_button_pressed)
	mage_button.pressed.connect(_on_mage_button_pressed)
	
func _on_warrior_button_pressed() -> void:
	var battle_scene = preload("res://Scenes/Battle/battle.tscn").instantiate()
	battle_scene.char_stats = WARRIOR
	get_tree().unload_current_scene()
	get_tree().change_scene_to_packed(battle_scene)
	
func _on_mage_button_pressed() -> void:
	pass
	
