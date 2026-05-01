extends Node2D

@onready var front: ColorRect = $Front
@onready var label: Label = $Label
@onready var close: Button = $Close

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/clinic.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_instructions_pressed() -> void:
	front.visible=true
	label.visible=true
	close.visible=true

func _on_close_pressed() -> void:
	front.visible=false
	label.visible=false
	close.visible=false
