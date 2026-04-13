extends Node2D

@onready var attacks: Node2D = $Attacks
@onready var player: AnimatedSprite2D = $player
@onready var chargeeeee: CharacterBody2D = $CHARGEEEEE

func _physics_process(delta: float) -> void:
	if Globals.attack==true:
		player.play("Attack")
		await get_tree().create_timer(.5).timeout
		chargeeeee.visible=true
		Globals.go=true
	else:
		player.play("Idle")

func _on_attack_pressed() -> void:
	attacks.visible=true

func _on_run_pressed() -> void:
	Globals.fightb=false
