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
@onready var add_f: AnimatedSprite2D = $AddF
@onready var adds_f: Button = $AddsF
@onready var remove_f: AnimatedSprite2D = $RemoveF
@onready var removes_f: Button = $RemovesF
@onready var add_ss: AnimatedSprite2D = $AddSS
@onready var adds_ss: Button = $AddsSS
@onready var remove_ss: AnimatedSprite2D = $RemoveSS
@onready var removes_ss: Button = $RemovesSS
@onready var add_s: AnimatedSprite2D = $AddS
@onready var adds_s: Button = $AddsS
@onready var remove_s: AnimatedSprite2D = $RemoveS
@onready var removes_s: Button = $RemovesS
@onready var add_b: AnimatedSprite2D = $AddB
@onready var adds_b: Button = $AddsB
@onready var remove_b: AnimatedSprite2D = $RemoveB
@onready var removes_b: Button = $RemovesB

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
	if Globals.collectFlowerPerm==true:
		name_4.text="Flower: "+str(Globals.flower)
		add_f.visible=true
		adds_f.visible=true
		remove_f.visble=true
		removes_f.visible=true
	if Globals.collectSSPerm==true:
		name_5.text="SeaShell: "+str(Globals.seashells)
		add_ss.visible=true
		adds_ss.visible=true
		remove_ss.visible=true
		removes_ss.visible=true
	if FishGlobals.collectSPerm==true:
		name_6.text="Scale: "+str(FishGlobals.scale)
		add_s.visible=true
		adds_s.visible=true
		remove_s.visible=true
		removes_s.visible=true
	if FishGlobals.collectBPerm==true:
		name_7.text="Bone: "+str(FishGlobals.bone)
		add_b.visible=true
		adds_b.visible=true
		remove_b.visible=true
		removes_b.visible=true

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
