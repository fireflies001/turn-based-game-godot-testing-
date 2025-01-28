extends Node2D


var enemies: Array = []
var action_queue: Array = []
var is_battling: bool = false
var index: int = 0
var damage: int = 0
 
signal next_player

func _ready():
	enemies = get_children()

func _action(stack: Array, damage: int):
	for i in stack:
		enemies[i].take_damage(damage)
		await get_tree().create_timer(1).timeout
	action_queue.clear()
	is_battling = false
	emit_signal("next_player")

func _on_control_skill_pressed(value):
	if value == "FIRE":
		damage = 10
	elif value == "WATER":
		damage = 20
	elif value == "EARTH":
		damage = 30
	elif value == "AUTO":
		damage = 10
	
	action_queue.push_back(index)
	is_battling = true
	_action(action_queue,damage)
