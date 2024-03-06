class_name CardMenuUI
extends CenterContainer

signal tooltip_requested(card: Card)

const BASE_STYLE_BOX := preload("res://Resources/UI/card_base_style_box.tres")
const HOVER_STYLE_BOX := preload("res://Resources/UI/card_hover_style_box.tres")

@export var card: Card : set = set_card

@onready var panel: Panel = $Visuals/Panel
@onready var cost: Label = $Visuals/Cost
@onready var icon: TextureRect = $Visuals/Icon


func _on_visuals_mouse_entered() -> void:
	panel.set("theme_override_styles/panel", HOVER_STYLE_BOX)


func _on_visuals_mouse_exited() -> void:
	panel.set("theme_override_styles/panel", BASE_STYLE_BOX)


func _on_visuals_gui_input(event: InputEvent) -> void:
	if event.is_action_pressed("left_mouse"):
		tooltip_requested.emit(card)

func set_card(value: Card) -> void:
	if not is_node_ready():
		await ready
		
	card = value
	cost.text = str(card.cost)
	icon.texture = card.icon
