extends Node2D

@onready var attacks: Node2D = $Attacks
@onready var player: AnimatedSprite2D = $player

func _physics_process(delta: float) -> void:
	if Globals.attack==true:
		player.play("Attack")
	else:
		player.play("Idle")


func _on_attack_pressed() -> void:
	attacks.visible=true


func _on_run_pressed() -> void:
	Globals.fightb=false
	get_tree().change_scene_to_file("res://scenes/forest.tscn")
