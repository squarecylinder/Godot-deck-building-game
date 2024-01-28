class_name Run
extends Node

const BATTLE_SCENE = preload("res://Scenes/StartScreen/MainGame/Battle/battle.tscn")
const BATTLE_REWARDS_SCENE = preload("res://Scenes/StartScreen/MainGame/BattleRewards/battle_rewards.tscn")
const CAMPFIRE_SCENE = preload("res://Scenes/StartScreen/MainGame/Campfire/campfire.tscn")
const MAP_SCENE = preload("res://Scenes/StartScreen/MainGame/Map/map.tscn")
const SHOP_SCENE = preload("res://Scenes/StartScreen/MainGame/Shop/shop.tscn")
const TREASURE_SCENE = preload("res://Scenes/StartScreen/MainGame/Treasure/treasure.tscn")

@export var run_startup: RunStartup

@onready var current_view: Node = $CurrentView
@onready var map_button: Button = %MapButton
@onready var battle_button: Button = %BattleButton
@onready var shop_button: Button = %ShopButton
@onready var treasure_button: Button = %TreasureButton
@onready var rewards_button: Button = %RewardsButton
@onready var campfire_button: Button = %CampfireButton

var character: CharacterStats

func _ready() -> void:
	if not run_startup:
		return
		
	match run_startup.type:
		RunStartup.Type.NEW_RUN:
			character = run_startup.picked_character.create_instance()
			print(character.character_name)
			_start_run()
		RunStartup.Type.CONTINUED_RUN:
			print("TODO: Load previous run")
		
func _start_run() -> void:
	_setup_event_connections()
	print("TODO: procedurally generate map")
	
func _change_view(scene: PackedScene) ->void:
	if current_view.get_child_count() > 0:
		current_view.get_child(0).queue_free()
		
	get_tree().paused = false
	var new_view := scene.instantiate()
	current_view.add_child(new_view)
	
func _setup_event_connections() -> void:
	Events.battle_won.connect(_change_view.bind(BATTLE_REWARDS_SCENE))
	Events.battle_reward_exited.connect(_change_view.bind(MAP_SCENE))
	Events.campfire_exited.connect(_change_view.bind(MAP_SCENE))
	Events.map_exited.connect(_on_map_exited)
	Events.shop_exited.connect(_change_view.bind(MAP_SCENE))
	Events.treasure_room_exited.connect(_change_view.bind(MAP_SCENE))
	
	battle_button.pressed.connect(_change_view.bind(BATTLE_SCENE))
	campfire_button.pressed.connect(_change_view.bind(CAMPFIRE_SCENE))
	map_button.pressed.connect(_change_view.bind(MAP_SCENE))
	rewards_button.pressed.connect(_change_view.bind(BATTLE_REWARDS_SCENE))
	treasure_button.pressed.connect(_change_view.bind(TREASURE_SCENE))
	shop_button.pressed.connect(_change_view.bind(SHOP_SCENE))
	
func _on_map_exited() -> void:
	print("TODO: From the Map, change view based on room type")
	pass
