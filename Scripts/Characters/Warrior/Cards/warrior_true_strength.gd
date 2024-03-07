extends Card

func apply_effects(targets: Array[Node]) -> void:
	print("Card has been played")
	print("Targets: %s" % targets)

