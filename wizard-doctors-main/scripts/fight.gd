extends Node2D

@onready var attacks: Node2D = $Attacks
@onready var player: AnimatedSprite2D = $player
@onready var chargeeeee: CharacterBody2D = $CHARGEEEEE
@onready var health_2: ColorRect = $Health2

func _physics_process(delta: float) -> void:
	if Globals.attack==true:
		player.play("Attack")
		await get_tree().create_timer(.5).timeout
		chargeeeee.visible=true
		Globals.go=true
		Globals.please=true
		await get_tree().create_timer(1.8).timeout
		chargeeeee.global_position=Vector2(1460, 287)
		Globals.go=false
		Globals.please=false
	else:
		player.play("Idle")
	
	if health_2.size.x<=0:
		Globals.fightb=false
		Globals.bdead=true
		health_2.size.x=253
		Globals.doneb=true
		

func _on_attack_pressed() -> void:
	attacks.visible=true

func _on_run_pressed() -> void:
	Globals.fightb=false
	Globals.bdead=false
	health_2.size.x=253
	Globals.doneb=false

func _on_hitb_body_entered(body: Node2D) -> void:
	health_2.size.x-=100
	Globals.attack=false
	Globals.go=false
	chargeeeee.global_position=Vector2(252, 287)
	chargeeeee.visible=false
