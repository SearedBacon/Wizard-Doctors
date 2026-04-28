extends Node2D

var rand_tusk:=0
var rand_hooves:=0
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
		if rand_tusk<50:
			text.text="Item Dropped: 1 Tusk"
			BoarGlobals.tusk+=1
		if rand_tusk>50:
			text.text="Items Dropped: 2 Tusks"
			BoarGlobals.tusk+=2
	else:
		BoarGlobals.collectHPerm=true
		if rand_hooves<50:
			text.text="Item Dropped: 1 Hoof"
			BoarGlobals.hoof+=1
		if rand_hooves>50:
			text.text="Items Dropped: 2 Hooves"
			BoarGlobals.hoof+=2

func _on_next_pressed() -> void:
	rand_tusk=randf_range(0,100)
	rand_hooves=randf_range(0,100)
	BoarGlobals.which_boar_item=randf_range(0,100)
	text.visible=true
	next.visible=false
	Globals.pause=false
	top.visible=false
