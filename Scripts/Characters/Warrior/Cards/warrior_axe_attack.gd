extends Card

func apply_effects(targets: Array[Node]) -> void:
	var damage_effect := Damage.new()
	damage_effect.amount = 6
	damage_effect.execute(targets)
