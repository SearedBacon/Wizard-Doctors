extends CharacterBody2D

func _physics_process(delta: float) -> void:
	if Globals.go==true and Globals.please==true:
		velocity.x=400
		velocity.y=40
	else:
		velocity.x=0
		velocity.y=0
	
	move_and_slide()
