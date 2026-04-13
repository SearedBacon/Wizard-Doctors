extends CharacterBody2D

func _physics_process(delta: float) -> void:
	if Globals.go==true:
		velocity.x=400
		velocity.y=40
	
	move_and_slide()
