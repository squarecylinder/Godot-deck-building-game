extends Card

const EXPOSED_STATUS = preload("res://Resources/Statuses/exposed.tres")

# Just update int to an integer damage amount
var damage := 10
var exposed_duration := 2

func apply_effects(targets: Array[Node]) -> void:
	var damage_effect := DamageEffect.new()
	damage_effect.amount = damage
	damage_effect.sound = sound
	damage_effect.execute(targets)
	
	var status_effect := StatusEffect.new()
	var exposed := EXPOSED_STATUS.duplicate()
	exposed.duration = exposed_duration
	status_effect.status = exposed
	status_effect.execute(targets)
