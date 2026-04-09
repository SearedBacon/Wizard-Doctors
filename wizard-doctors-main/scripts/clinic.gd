extends Node2D

@onready var recipes: Node2D = $Recipes
@onready var illnesses: Node2D = $Illnesses
@onready var ingredients: Node2D = $Ingredients

func _physics_process(delta: float) -> void:
	if Globals.iScreen==true:
		illnesses.visible=true
	else:
		illnesses.visible=false
	
	if Globals.rScreen==true:
		recipes.visible=true
	else:
		recipes.visible=false
	
	if Globals.IngredientScreen==true:
		ingredients.visible=true
	else:
		ingredients.visible=false

func _on_see_patients_pressed() -> void:
	pass # Replace with function body.
