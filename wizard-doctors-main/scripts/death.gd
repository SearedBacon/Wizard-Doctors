extends Node2D

func _on_respawn_pressed() -> void:
	if Globals.revives>0:
		get_tree().change_scene_to_file("res://scenes/clinic.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()
