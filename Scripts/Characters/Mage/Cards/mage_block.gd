extends Card

var base_block := 8

func apply_effects(targets: Array[Node], modifiers: ModifierHandler) -> void:
	var block_effect := BlockEffect.new()
	block_effect.amount = modifiers.get_modified_value(base_block, Modifier.Type.BLOCK_GAINED)
	block_effect.sound = sound
	block_effect.execute(targets)


