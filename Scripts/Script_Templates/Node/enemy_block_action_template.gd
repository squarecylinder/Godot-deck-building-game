# meta-name: Enemy Block Action
# meta-description: A default block action for enemies
extends EnemyAction

# Update this int to an integer block amount for the enemy
var block: int

func perform_action() -> void:
	if not enemy or not target:
		return
		
	var block_effect := BlockEffect.new()
	block_effect.amount = block
	block_effect.sound = sound
	block_effect.execute([enemy])
	
	get_tree().create_timer(0.6, false).timeout.connect(
		func():
			Events.enemy_action_completed.emit(enemy)
	)
