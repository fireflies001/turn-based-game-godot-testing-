extends CharacterBody2D


@export_group("Nodes")
@export var healthNode: HEALTH
var health: float

func _ready():
	healthNode.set_heath()
	health = healthNode.get_heath()
	
func take_damage(value):
	health = healthNode.damage_taken(health, value)
	print("player: ",health)
