extends Node

var current_scene = null

func _ready() -> void:
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)
	
func goto_scene(path: String) -> void:
	call_deferred("_deferred_goto_scene", path)
	
func _deferred_goto_scene(path: String) -> void:
	current_scene.free()
	var new_scene = ResourceLoader.load(path)
	current_scene = new_scene.instantiate()
	get_tree().root.add_child(current_scene)
	get_tree().current_scene = current_scene
