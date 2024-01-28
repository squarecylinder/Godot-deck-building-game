extends Control

const RUN_SCENE = preload("res://Scenes/StartScreen/MainGame/Run/run.tscn")
const WARRIOR_STATS := preload("res://Resources/Characters/Warrior/warrior.tres")
const MAGE_STATS := preload("res://Resources/Characters/Mage/mage.tres")
const ROGUE_STATS := preload("res://Resources/Characters/Rogue/rogue.tres")

@export var run_startup: RunStartup

@onready var title: Label = %Title
@onready var description: Label = %Description
@onready var character_portrait: TextureRect = %CharacterPortrait

var current_character: CharacterStats : set = set_current_character

func _ready() -> void:
	set_current_character(WARRIOR_STATS)
	
func set_current_character(new_character: CharacterStats) -> void:
	current_character = new_character
	title.text = current_character.character_name
	description.text = current_character.description
	character_portrait.texture = current_character.portrait

func _on_start_button_pressed() -> void:
	print("Start new Run with %s" % current_character.character_name)
	run_startup.type = RunStartup.Type.NEW_RUN
	run_startup.picked_character = current_character
	get_tree().change_scene_to_packed(RUN_SCENE)
	pass # Replace with function body.


func _on_warrior_button_pressed() -> void:
	set_current_character(WARRIOR_STATS)
	pass # Replace with function body.


func _on_mage_button_pressed() -> void:
	set_current_character(MAGE_STATS)
	pass # Replace with function body.


func _on_rogue_button_pressed() -> void:
	set_current_character(ROGUE_STATS)	
	pass # Replace with function body.
