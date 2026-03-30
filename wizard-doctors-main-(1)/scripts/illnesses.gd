extends Node2D

@onready var back: Button = $Back
@onready var x: Button = $X

func _on_next_pressed() -> void:
	Globals.ipage+=1

func _on_back_pressed() -> void:
	if Globals.ipage>0:
		Globals.ipage-=1

func _on_x_pressed() -> void:
	Globals.iScreen=false

func _physics_process(delta: float) -> void:
	if Globals.ipage>0:
		back.visible=true
	if Globals.ipage==0:
		back.visible=false
