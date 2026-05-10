extends Node2D

@onready var recipes: Node2D = $Recipes
@onready var illnesses: Node2D = $Illnesses
@onready var ingredients: Node2D = $Ingredients
@onready var temp: Label = $Temp
@onready var recipe_label: Label = $RecipeLabel
@onready var illness_label: Label = $IllnessLabel

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
	
	if Globals.recipe_vis==true:
		recipe_label.visible=true
	else:
		recipe_label.visible=false
	
	if Globals.illness_vis==true:
		illness_label.visible=true
	else:
		illness_label.visible=false

func _on_see_patients_pressed() -> void:
	temp.visible=true
	await get_tree().create_timer(1.5).timeout
	temp.visible=false
