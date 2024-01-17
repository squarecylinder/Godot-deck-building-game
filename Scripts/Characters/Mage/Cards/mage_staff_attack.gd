extends Card

# Just update int to an integer damage amount
var damage := 10

func apply_effects(targets: Array[Node]) -> void:
	var damage_effect := DamageEffect.new()
	damage_effect.amount = damage
	damage_effect.sound = sound
	damage_effect.execute(targets)

