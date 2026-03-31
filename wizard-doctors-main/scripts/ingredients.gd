extends Node2D


func _on_next_pressed() -> void:
	Globals.ingredientpage+=1

func _on_back_pressed() -> void:
	if Globals.ingredientpage>0:
		Globals.ingredientpage-=1


func _on_button_pressed() -> void:
	Globals.IngredientScreen=false
