extends Area2D
class_name Boar

@onready var boar: Boar = $"."
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.run==true:
		if Globals.left==true:
			animated_sprite.play("Left")
			await get_tree().create_timer(1.87).timeout
			Globals.left=false
			Globals.up=true
		if Globals.up==true:
			animated_sprite.play("Up")
			await get_tree().create_timer(1.87).timeout
			Globals.up=false
			Globals.right=true
			
		if Globals.right==true:
			animated_sprite.play("Right")
			await get_tree().create_timer(1.87).timeout
			Globals.right=false
			Globals.down=true
			
		if Globals.down==true:
			animated_sprite.play("Down")
			await get_tree().create_timer(1.87).timeout
			Globals.down=false
			Globals.left=true
	pass

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		Globals.fightb=true
		Globals.doneb=false
		Globals.active=false
