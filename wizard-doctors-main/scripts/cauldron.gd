extends Node2D

func _on_brew_pressed() -> void:
	Globals.IngredientScreen=true

func _on_brew_mouse_entered() -> void:
	Globals.brew=true

func _on_brew_mouse_exited() -> void:
	Globals.brew=false
