extends Control

@onready var skill_selected_box = $PanelContainer/Margin/label_container/skill_selected_box


func _process(delta):
	
	pass

func _on_fire_pressed():
	Skills.add_to_skill("FIRE")
	update_skill_selected()

func _on_water_pressed():
	Skills.add_to_skill("WATER")
	update_skill_selected()

func _on_earth_pressed():
	Skills.add_to_skill("EARTH")
	update_skill_selected()

func _on_auto_attack_pressed():
	Skills.add_to_skill("AUTO")
	update_skill_selected()
	
	
func update_skill_selected():
	for child in skill_selected_box.get_children():
		child.queue_free()
	
	for value in Skills.chosen_skill:
		var skill_label = Label.new()
		skill_label.text = str(value)
		skill_selected_box.add_child(skill_label)



func _on_button_pressed():
	get_tree().change_scene_to_file("res://world.tscn")
