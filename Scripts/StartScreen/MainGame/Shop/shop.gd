extends Control


func _on_button_pressed() -> void:
	Events.shop_exited.emit()
	pass # Replace with function body.
