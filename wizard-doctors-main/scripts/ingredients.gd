extends Node2D

@onready var names: Label = $Names
@onready var name_2: Label = $Name2
@onready var name_3: Label = $Name3
@onready var name_4: Label = $Name4
@onready var name_5: Label = $Name5
@onready var name_6: Label = $Name6
@onready var name_7: Label = $Name7

func _physics_process(delta: float) -> void:
	if BoarGlobals.collectTPerm==true:
		names.text="Tusk"

func _on_next_pressed() -> void:
	Globals.ingredientpage+=1

func _on_back_pressed() -> void:
	if Globals.ingredientpage>0:
		Globals.ingredientpage-=1

func _on_button_pressed() -> void:
	Globals.IngredientScreen=false
