extends Control

const CHARACTER_SELECTOR_SCENE = preload("res://Scenes/StartScreen/character_selector.tscn")

@onready var continue_button: Button = %Continue

func _ready() -> void:
	get_tree().paused = false

func _on_continue_pressed() -> void:
	print("Continue Run")
	pass # Replace with function body.


func _on_new_run_pressed() -> void:
	get_tree().change_scene_to_packed(CHARACTER_SELECTOR_SCENE)
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
