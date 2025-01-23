extends CharacterBody2D
var health: float = 7


func take_damage(value):
	health -= value
	print("enemy: ",health)
