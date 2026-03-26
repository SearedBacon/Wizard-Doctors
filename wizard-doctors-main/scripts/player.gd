extends CharacterBody2D
class_name Player

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var player: CharacterBody2D = $"."
var active:=true


func _physics_process(_delta: float) -> void:
	var direction:=0
	var directions:=0
	if active:
		direction = Input.get_axis("move_left","move_right")
		directions = Input.get_axis("move_up","move_down")
	
	if direction!=0:
		animated_sprite.flip_h =(direction==-1)
	update_animations(direction)
	
	velocity.x=direction*Globals.speed
	velocity.y=directions*Globals.speed
	

	move_and_slide()

func update_animations(direction:int)->void:
	if direction !=0:
		animated_sprite.play("walk")
	else:
		animated_sprite.play("idle")


func _on_go_home_body_entered(body: Node2D) -> void:
	if body is Player:
		get_tree().change_scene_to_file("res://scenes/clinic.tscn")


func _on_go_beach_body_entered(body: Node2D) -> void:
	if body is Player:
		get_tree().change_scene_to_file("res://scenes/beach.tscn")
