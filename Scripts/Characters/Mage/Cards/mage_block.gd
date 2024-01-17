extends Card

var block = 10

func apply_effects(targets: Array[Node]) -> void:
	var block_effect := BlockEffect.new()
	block_effect.amount = block
	block_effect.sound = sound
	block_effect.execute(targets)


