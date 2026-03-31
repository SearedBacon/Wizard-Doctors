extends Area2D

@onready var skeletons: Area2D = $"."
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.run==true:
		if Globals.left==true:
			skeletons.global_position.x-=1
			animated_sprite.play("Left")
			await get_tree().create_timer(2).timeout
			Globals.left=false
			Globals.up=true
			
		if Globals.up==true:
			skeletons.global_position.y-=0.4
			animated_sprite.play("Up")
			await get_tree().create_timer(2).timeout
			Globals.up=false
			Globals.right=true
			
		if Globals.right==true:
			skeletons.global_position.x+=0.33
			animated_sprite.play("Right")
			await get_tree().create_timer(2).timeout
			Globals.right=false
			Globals.down=true
			
		if Globals.down==true:
			skeletons.global_position.y+=0.2
			animated_sprite.play("Down")
			await get_tree().create_timer(2).timeout
			Globals.down=false
			Globals.left=true
