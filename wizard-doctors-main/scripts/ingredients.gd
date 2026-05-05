extends Node2D

@onready var names: Label = $Names
@onready var name_2: Label = $Name2
@onready var name_3: Label = $Name3
@onready var name_4: Label = $Name4
@onready var name_5: Label = $Name5
@onready var name_6: Label = $Name6
@onready var name_7: Label = $Name7
@onready var add_t: AnimatedSprite2D = $AddT
@onready var adds_t: Button = $AddsT
@onready var remove_t: AnimatedSprite2D = $RemoveT
@onready var removes_t: Button = $RemovesT
@onready var add_h: AnimatedSprite2D = $AddH
@onready var adds_h: Button = $AddsH
@onready var remove_h: AnimatedSprite2D = $RemoveH
@onready var removes_h: Button = $RemovesH
@onready var add_tr: AnimatedSprite2D = $AddTR
@onready var adds_tr: Button = $AddsTR
@onready var remove_tr: AnimatedSprite2D = $RemoveTR
@onready var removes_tr: Button = $RemovesTR

func _physics_process(delta: float) -> void:
	if BoarGlobals.collectTPerm==true and BoarGlobals.tusk>0:
		names.text="Tusk: "+str(BoarGlobals.tusk)
		add_t.visible=true
		adds_t.visible=true
		remove_t.visible=true
		removes_t.visible=true
	if BoarGlobals.collectHPerm==true:
		name_2.text="Hoof: "+str(BoarGlobals.hoof)
		add_h.visible=true
		adds_h.visible=true
		remove_h.visible=true
		removes_h.visible=true
	if Globals.collectTRootPerm==true:
		name_3.text="Tree Root: "+str(Globals.treeroot)
		add_tr.visible=true
		adds_tr.visible=true
		remove_tr.visible=true
		removes_tr.visible=true

func _on_next_pressed() -> void:
	Globals.ingredientpage+=1

func _on_back_pressed() -> void:
	if Globals.ingredientpage>0:
		Globals.ingredientpage-=1

func _on_button_pressed() -> void:
	Globals.IngredientScreen=false

func _on_adds_t_pressed() -> void:
	if BoarGlobals.tusk>0:
		BoarGlobals.tusk-=1

func _on_removes_t_pressed() -> void:
	if BoarGlobals.trackT>BoarGlobals.tusk:
		BoarGlobals.tusk+=1

func _on_adds_h_pressed() -> void:
	if BoarGlobals.hoof>0:
		BoarGlobals.hoof-=1

func _on_removes_h_pressed() -> void:
	if BoarGlobals.trackH>BoarGlobals.hoof:
		BoarGlobals.hoof+=1

func _on_adds_tr_pressed() -> void:
	if Globals.treeroot>0:
		Globals.treeroot-=1

func _on_removes_tr_pressed() -> void:
	if Globals.trackTR>Globals.treeroot:
		Globals.treeroot+=1
