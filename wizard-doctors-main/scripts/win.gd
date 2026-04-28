extends Node2D

@onready var text: Label = $Text
@onready var next: Button = $Next
@onready var top: Label = $Top

func _physics_process(delta: float) -> void:
	if Globals.pause==true:
		top.visible=true
		text.visible=false
		next.visible=true
	else:
		top.visible=false
		text.visible=true
		next.visible=false
	
	if BoarGlobals.which_boar_item<=49:
		BoarGlobals.collectTPerm=true
		if BoarGlobals.rand_tusk<50:
			text.text="Item Dropped: 1 Tusk"
		if BoarGlobals.rand_tusk>50:
			text.text="Items Dropped: 2 Tusks"
	else:
		BoarGlobals.collectHPerm=true
		if BoarGlobals.rand_hooves<50:
			text.text="Item Dropped: 1 Hoof"
		if BoarGlobals.rand_hooves>50:
			text.text="Items Dropped: 2 Hooves"

func _on_next_pressed() -> void:
	BoarGlobals.rand_tusk=randf_range(0,100)
	BoarGlobals.rand_hooves=randf_range(0,100)
	BoarGlobals.which_boar_item=randf_range(0,100)
	text.visible=true
	next.visible=false
	Globals.pause=false
	top.visible=false
