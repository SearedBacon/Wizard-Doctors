extends Node2D

@onready var back: Button = $Back

func _on_next_pressed() -> void:
	Globals.rpage+=1

func _on_back_pressed() -> void:
	if Globals.rpage>0:
		Globals.rpage-=1

func _physics_process(delta: float) -> void:
	if Globals.rpage>0:
		back.visible=true
	if Globals.rpage==0:
		back.visible=false
