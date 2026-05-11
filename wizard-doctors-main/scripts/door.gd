extends Node2D

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/village.tscn")

func _on_button_mouse_entered() -> void:
	Globals.leave_clinic=true

func _on_button_mouse_exited() -> void:
	Globals.leave_clinic=false
