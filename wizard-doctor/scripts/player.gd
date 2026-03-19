extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	var horizontal := Input.get_axis("move_left", "move_right")
	var vertical :=Input.get_axis("move_up","move_down")
	
	if horizontal:
		velocity.x = horizontal * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if vertical:
			velocity.y = vertical * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	

	move_and_slide()
