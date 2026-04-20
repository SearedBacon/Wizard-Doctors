extends Node2D

var rand_tusk:=0
var rand_hooves:=0
@onready var text: Label = $Text
@onready var next: Button = $Next
@onready var top: Label = $Top

func _physics_process(delta: float) -> void:
	if Globals.which_boar_item==0:
		if rand_tusk<50:
			text.text="Item Dropped: 1 Tusk"
		if rand_tusk>50:
			text.text="Items Dropped: 2 Tusks"
	if Globals.which_boar_item==1:
		if rand_hooves<50:
			text.text="Item Dropped: 1 Hoof"
		if rand_hooves>50:
			text.text="Items Dropped: 2 Hooves"


func _on_next_pressed() -> void:
	rand_tusk=randf_range(0,100)
	rand_hooves=randf_range(0,100)
	text.visible=true
	next.visible=false
	Globals.pause=false
	top.visible=false
