extends TileMapLayer

@onready var fight: Node2D = $Fight

func _physics_process(delta: float) -> void:
	if Globals.collectT==true and Input.is_action_just_pressed("collect"):
		Globals.tusk+=1
		Globals.collectTPerm=true
		Globals.collectT=false
	
	if Globals.fightb==true:
		get_tree().change_scene_to_file("res://scenes/fight.tscn")

func _on_collect_body_entered(body: Node2D) -> void:
	Globals.collectT=true
	print("yes")
	Globals.collectTPerm=true
	
func _on_collect_body_exited(body: Node2D) -> void:
	Globals.collectT=false
