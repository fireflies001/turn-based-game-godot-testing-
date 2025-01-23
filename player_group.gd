extends Node2D

var players: Array = []

var action_queue: Array = []
var is_battling: bool = false
var index: int = 0

func _ready():
	players = get_children()


func _on_enemy_group_next_player():
	players[index].take_damage(1)
	await get_tree().create_timer(1).timeout
	action_queue.clear()
	is_battling = false
		
