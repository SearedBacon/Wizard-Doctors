extends Node2D

@onready var recipes: Node2D = $Recipes
@onready var illnesses: Node2D = $Illnesses
@onready var ingredients: Node2D = $Ingredients
@onready var temp: Label = $Temp
@onready var recipe_label: Label = $RecipeLabel
@onready var illness_label: Label = $IllnessLabel
@onready var back: ColorRect = $Back
@onready var common_cold: Label = $CommonCold
@onready var flu: Label = $Flu
@onready var covid_1: Label = $"Covid-1"
@onready var lupus: Label = $Lupus
@onready var ball_explode: Label = $BallExplode
@onready var ebola: Label = $Ebola
@onready var black_plague: Label = $BlackPlague
@onready var close: Button = $Close
@onready var leave: Label = $Leave

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
	
	if Globals.cold==true:
		back.visible=true
		close.visible=true
		common_cold.visible=true
	
	if Globals.flu==true:
		flu.visible=true
		back.visible=true
		close.visible=true
	
	if Globals.covid==true:
		covid_1.visible=true
		back.visible=true
		close.visible=true
	
	if Globals.lupus==true:
		lupus.visible=true
		back.visible=true
		close.visible=true
	
	if Globals.ballexplode==true:
		ball_explode.visible=true
		back.visible=true
		close.visible=true
	
	if Globals.ebola==true:
		ebola.visible=true
		back.visible=true
		close.visible=true
	
	if Globals.blackplague==true:
		black_plague.visible=true
		back.visible=true
		close.visible=true
	
	if Globals.leave_clinic==true:
		leave.visible=true
	else:
		leave.visible=false

func _on_see_patients_pressed() -> void:
	pass

func _on_close_pressed() -> void:
	Globals.cold=false
	Globals.flu=false
	Globals.covid=false
	Globals.lupus=false
	Globals.ballexplode=false
	Globals.ebola=false
	Globals.blackplague=false
	back.visible=false
	close.visible=false
	common_cold.visible=false
	flu.visible=false
	covid_1.visible=false
	lupus.visible=false
	ball_explode.visible=false
	ebola.visible=false
	black_plague.visible=false

func _on_see_patients_mouse_entered() -> void:
	temp.visible=true

func _on_see_patients_mouse_exited() -> void:
	temp.visible=false
