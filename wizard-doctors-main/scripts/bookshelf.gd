extends Node2D

func _on_recipe_pressed() -> void:
	Globals.rScreen=true

func _on_index_pressed() -> void:
	Globals.iScreen=true

func _on_recipe_mouse_entered() -> void:
	Globals.recipe_vis=true

func _on_recipe_mouse_exited() -> void:
	Globals.recipe_vis=false

func _on_index_mouse_entered() -> void:
	Globals.illness_vis=true

func _on_index_mouse_exited() -> void:
	Globals.illness_vis=false
