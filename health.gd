
class_name HEALTH extends Node2D


@export var health_points: float
var actual_health_points: float
func set_heath():
	actual_health_points = health_points
	
func get_heath():
	return actual_health_points
		
func regenerate_health(health:float, multiplier: float):
	if(health < actual_health_points):
		health *= multiplier
	return health

func calculate_health():
	pass

func damage_taken(curHealth, value):
	curHealth -= value
	return curHealth
