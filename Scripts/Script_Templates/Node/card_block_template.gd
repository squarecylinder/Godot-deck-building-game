# meta-name: Card Block Logic
# meta-description: Basic template for block cards
extends Card

# Just update int to an integer block amount
var block: int

func apply_effects(targets: Array[Node]) -> void:
	var block_effect := BlockEffect.new()
	block_effect.amount = block
	block_effect.sound = sound
	block_effect.execute(targets)
