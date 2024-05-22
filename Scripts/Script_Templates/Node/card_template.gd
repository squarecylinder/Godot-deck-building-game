# meta-name: Card Logic
# meta-description: What happens when a card is played.
extends Card

func apply_effects(targets: Array[Node], _modifiers: ModifierHandler) -> void:
	print("Card has been played")
	print("Targets: %s" % targets)
