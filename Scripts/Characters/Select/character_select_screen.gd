extends Node

@onready var player = PlayerManager

func _on_character_type_pressed():
	player.health = 100
	player.gold = 110
	player.character_type = %CharacterType.text
	print("Health: %s Gold: %s Class: %s" % [player.health, player.gold, player.character_type])
	pass # Replace with function body.


func _on_character_type_2_pressed():
	player.health = 50
	player.gold = 130
	player.character_type = %CharacterType2.text
	print("Health: %s Gold: %s Class: %s" % [player.health, player.gold, player.character_type])
	pass # Replace with function body.


func _on_character_type_3_pressed():
	player.health = 75
	player.gold = 150
	player.character_type = %CharacterType3.text
	print("Health: %s Gold: %s Class: %s" % [player.health, player.gold, player.character_type])
	pass # Replace with function body.
