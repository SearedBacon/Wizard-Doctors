extends Node2D

@onready var attack: Node2D = $"."

func _physics_process(delta: float) -> void:
	pass

func _on_fireball_pressed() -> void:
	Globals.attack=true
	Globals.please=true
	attack.visible=false
	await get_tree().create_timer(1).timeout
	Globals.attack=false
