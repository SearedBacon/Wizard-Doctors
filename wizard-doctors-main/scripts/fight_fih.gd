extends Node2D

@onready var attacks: Node2D = $Attacks
@onready var player: AnimatedSprite2D = $Player
@onready var chargeeeee: CharacterBody2D = $CHARGEEEEE
@onready var health: ColorRect = $Health
@onready var health_2: ColorRect = $Health2
@onready var death: Node2D = $Death
@onready var attack: Button = $Attack
@onready var bag: Button = $Bag
@onready var run: Button = $Run

func _physics_process(delta: float) -> void:
	
	if health.size.x<=0:
		player.play("Death")
		await get_tree().create_timer(1).timeout
		death.visible=true
	
	if Globals.attack==true:
		player.play("Attack")
		await get_tree().create_timer(0.5).timeout
		chargeeeee.visible=true
		Globals.go=true
		Globals.please=true
	else:
		player.play("Idle")

func _on_attack_pressed() -> void:
	attacks.visible=true

func _on_bag_pressed() -> void:
	pass # Replace with function body.

func _on_run_pressed() -> void:
	pass # Replace with function body.
