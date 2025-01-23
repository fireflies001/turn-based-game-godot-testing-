extends Node2D


var enemies: Array = []
var action_queue: Array = []
var is_battling: bool = false
var index: int = 0

 
signal next_player

func _ready():
	enemies = get_children()
	
func _process(_delta):
	if Input.is_action_just_pressed("attack"):
		print("attack")
		action_queue.push_back(index)
		is_battling = true
		_action(action_queue)
			

func _action(stack):
	for i in stack:
		enemies[i].take_damage(1)
		await get_tree().create_timer(1).timeout
	action_queue.clear()
	is_battling = false
	emit_signal("next_player")
