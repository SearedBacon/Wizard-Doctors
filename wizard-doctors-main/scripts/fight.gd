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
@onready var death: Node2D = $Death
@onready var hitb: Area2D = $boar/Hitb
var butvis:=true

func _physics_process(delta: float) -> void:
	if Globals.doneb==true and health.size.x<254:
		health.size.x+=.3
	
	#if boar.global_position==Vector2(2145,338):
		#BoarGlobals.buttons_work=true
	#else:
		#BoarGlobals.buttons_work=false
	
	if chargeeeee.visible==true or boar.global_position!=Vector2(2145,338) or butvis==false:
		BoarGlobals.buttons_work=false
	else:
		BoarGlobals.buttons_work=true
	
	if Globals.attack==true:
		#attack.visible=false
		#run.visible=false
		#bag.visible=false
		#BoarGlobals.buttons_work=false
		if BoarGlobals.buttons_work==false:
			attack.disabled=true
			run.disabled=true
			bag.disabled=true
		player.play("Attack")
		butvis=false
		await get_tree().create_timer(.5).timeout
		butvis=true
		chargeeeee.visible=true
		Globals.go=true
		Globals.please=true
		#BoarGlobals.buttons_work=false
		await get_tree().create_timer(1.8).timeout
		BoarGlobals.buttons_work=false
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
		await get_tree().create_timer(1.8).timeout
		#BoarGlobals.buttons_work=true
		if BoarGlobals.buttons_work==true:
			attack.disabled=false
			run.disabled=false
			bag.disabled=false
	else:
		player.play("Idle")
	
	if Globals.fightb==true and Globals.doneb==false:
		boar.visible=true
	
	if health_2.size.x<=1:
		boar.visible=false
		close.visible=true
		win.visible=true
		hitb.collision_layer=2
		hitb.collision_mask=2
	else:
		hitb.collision_layer=1
		hitb.collision_mask=1
	
	if boar.visible==false:
		win.visible=true
	else:
		win.visible=false
	
	if Globals.pause==true:
		close.visible=false
	else:
		close.visible=true
	
	if health.size.x<=0:
		death.visible=true

func _on_attack_pressed() -> void:
	attacks.visible=true

func _on_run_pressed() -> void:
	Globals.fightb=false
	Globals.bdead=false
	health_2.size.x=253
	Globals.doneb=false
	Globals.active=true

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
	win.visible=false
	health_2.size.x=253
	close.visible=false
	Globals.pause=true
	Globals.active=true
