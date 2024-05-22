extends Card

var block = 8

func apply_effects(targets: Array[Node], modifiers: ModifierHandler) -> void:
	var block_effect := BlockEffect.new()
	block_effect.amount = block
	block_effect.sound = sound
	block_effect.execute(targets)


