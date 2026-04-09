extends Node2D

@onready var time: Label = $Time
var timers:=1

func _physics_process(delta: float) -> void:
	time.text="Shop resets in : "+str()
