extends Node2D

@onready var attacks: Node2D = $Attacks
@onready var player: AnimatedSprite2D = $player
@onready var chargeeeee: CharacterBody2D = $CHARGEEEEE
@onready var health_2: ColorRect = $Health2
@onready var boar: AnimatedSprite2D = $boar
@onready var health: ColorRect = $Health
@onready var attack: Button = $Attack
@onready var bag: Button = $Bag
@onready var run: Button = $Run
@onready var close: Button = $Close
@onready var win: Node2D = $Win

func _physics_process(delta: float) -> void:
	if Globals.doneb==true and health.size.x<254:
		health.size.x+=.3
	
	if Globals.attack==true:
		attack.disabled=true
		run.disabled=true
		bag.disabled=true
		player.play("Attack")
		await get_tree().create_timer(.5).timeout
		chargeeeee.visible=true
		Globals.go=true
		Globals.please=true
		await get_tree().create_timer(1.8).timeout
		chargeeeee.collision_layer=2
		chargeeeee.collision_mask=2
		chargeeeee.global_position=Vector2(1460, 287)
		Globals.go=false
		Globals.please=false
		boar.play("Attack")
		boar.global_position+=Vector2(-13,0)
		await get_tree().create_timer(1.8).timeout
		boar.global_position+=Vector2(13,0)
		boar.play("Idle")
		chargeeeee.collision_layer=1
		chargeeeee.collision_mask=1
	else:
		player.play("Idle")
	
	if Globals.fightb==true and Globals.doneb==false:
		boar.visible=true
	
	if health_2.size.x<=0:
		boar.visible=false
		close.visible=true
		win.visible=true
		boar.global_position=Vector2(1945,331)
		Globals.which_boar_item=randf_range(0,1)
	
	if Globals.pause==true:
		close.visible=false
	else:
		close.visible=true

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
	chargeeeee.global_position=Vector2(252,287)
	chargeeeee.visible=false

func _on_hitb_area_entered(area: Area2D) -> void:
	health.size.x-=50
	await get_tree().create_timer(1.8).timeout
	attack.disabled=false
	run.disabled=false
	bag.disabled=false


func _on_close_pressed() -> void:
	Globals.fightb=false
	Globals.bdead=true
	health_2.size.x=253
	Globals.doneb=true
	close.visible=false
	win.visible=true
