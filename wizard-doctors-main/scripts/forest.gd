extends TileMapLayer

@onready var fight: Node2D = $Fight
@onready var p_camera_2d: Camera2D = $Player/PCamera2D
@onready var f_camera_2d: Camera2D = $FCamera2D

func _physics_process(delta: float) -> void:
	f_camera_2d.enabled=false
	if Globals.collectT==true and Input.is_action_just_pressed("collect"):
		Globals.tusk+=1
		Globals.collectTPerm=true
		Globals.collectT=false
	
	if Globals.fightb==true:
		fight.visible=true
		f_camera_2d.enabled=true
		p_camera_2d.enabled=false
	else:
		fight.visible=false
		f_camera_2d.enabled=false
		p_camera_2d.enabled=true

func _on_collect_body_entered(body: Node2D) -> void:
	Globals.collectT=true
	print("yes")
	Globals.collectTPerm=true
	
func _on_collect_body_exited(body: Node2D) -> void:
	Globals.collectT=false
