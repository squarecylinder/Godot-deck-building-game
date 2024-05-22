# meta-name: Card Attack Logic
# meta-description: Basic template for card attacks
extends Card

# Just update int to an integer damage amount
var base_damage: int

func apply_effects(targets: Array[Node], modifiers: ModifierHandler) -> void:
	var damage_effect := DamageEffect.new()
	damage_effect.amount = modifiers.get_modified_value(base_damage, Modifier.Type.DMG_DEALT)
	damage_effect.sound = sound
	damage_effect.execute(targets)
