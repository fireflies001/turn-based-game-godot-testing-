extends Resource


# Skill properties
var name: String
var damage: int
var cooldown: float
var range: float

# Constructor to set up the skill
func _init(name: String, damage: int, cooldown: float, range: float) -> void:
	self.name = name
	self.damage = damage
	self.cooldown = cooldown
	self.range = range
