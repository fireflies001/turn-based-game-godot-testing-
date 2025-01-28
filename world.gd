extends Control

@onready var skill_panel = $PanelContainer/MarginContainer/VBoxContainer/Skill_Selection

signal skill_pressed(value: String)
# Called when the node enters the scene tree for the first time.
func _ready():
	update_skill_selected()


func update_skill_selected():
	for child in skill_panel.get_children():
		child.queue_free()
	
	for value in Skills.chosen_skill:
		var skill_label = Button.new()
		skill_label.text = str(value)
		skill_label.connect("pressed", Callable(self, "on_pressed").bind(value))
		skill_panel.add_child(skill_label)

func on_pressed(value):
	emit_signal("skill_pressed",value)
