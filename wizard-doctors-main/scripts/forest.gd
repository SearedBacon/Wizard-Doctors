extends TileMapLayer

@onready var fight: Node2D = $Fight
@onready var p_camera_2d: Camera2D = $Player/PCamera2D
@onready var f_camera_2d: Camera2D = $FCamera2D
@onready var boar: Boar = $Boar1P/BoarFollow1/Boar
@onready var boar_2: Boar = $Boar2P/BoarFollow2/Boar2
@onready var boar_3: Boar = $Boar3P/BoarFollow3/Boar3
@onready var boar_4: Boar = $Boar4P/BoarFollow4/Boar4
@onready var boar_follow_1: PathFollow2D = $Boar1P/BoarFollow1
@onready var boar_follow_2: PathFollow2D = $Boar2P/BoarFollow2
@onready var boar_follow_3: PathFollow2D = $Boar3P/BoarFollow3
@onready var boar_follow_4: PathFollow2D = $Boar4P/BoarFollow4
@onready var player: Player = $Player
@onready var village_also_here: Label = $VillageAlsoHere
@onready var flower_collect: Label = $FlowerCollect
@onready var tree_root_collect: Label = $TreeRootCollect
var trtime:=10

func _physics_process(delta: float) -> void:

	if BoarGlobals.bvisible==true:
		boar.visible=true
		boar_2.visible=true
		boar_3.visible=true
		boar_4.visible=true
		BoarGlobals.bvisible=false
		boar.collision_layer=1
		boar.collision_mask=1
		boar_2.collision_layer=1
		boar_2.collision_mask=1
		boar_3.collision_layer=1
		boar_3.collision_mask=1
		boar_4.collision_layer=1
		boar_4.collision_mask=1
		BoarGlobals.whichb=0
	
	if Globals.gobackforest==true:
		player.global_position=Vector2(876,145)
		Globals.gobackforest=false
	
	boar_follow_1.progress+=1
	boar_follow_2.progress+=1
	boar_follow_3.progress+=1
	boar_follow_4.progress+=1
	
	f_camera_2d.enabled=false
	
	if BoarGlobals.doneb==true:
		p_camera_2d.enabled=true
		f_camera_2d.enabled=false
		fight.visible=false
		if BoarGlobals.whichb==1:
			boar.visible=false
			boar.collision_layer=2
			boar.collision_mask=2
		if BoarGlobals.whichb==2:
			boar_2.visible=false
			boar_2.collision_layer=2
			boar_2.collision_mask=2
		if BoarGlobals.whichb==3:
			boar_3.visible=false
			boar_3.collision_layer=2
			boar_3.collision_mask=2
		if BoarGlobals.whichb==4:
			boar_4.visible=false
			boar_4.collision_layer=2
			boar_4.collision_mask=2
	else:
		p_camera_2d.enabled=false
		f_camera_2d.enabled=true
		fight.visible=true
	
	if Globals.collectTRoot==true and Input.is_action_just_pressed("collect"):
		Globals.treeroot+=1
		Globals.trackTR+=1
		Globals.collectTRootPerm=true
	
	if Globals.collectFlower==true and Input.is_action_just_pressed("collect"):
		Globals.flower+=1
		Globals.trackF+=1
		Globals.collectFlowerPerm=true
	
	if BoarGlobals.fightb==true:
		fight.visible=true
		f_camera_2d.enabled=true
		p_camera_2d.enabled=false
	else:
		fight.visible=false
		f_camera_2d.enabled=false
		p_camera_2d.enabled=true

func _on_collect_body_entered(body: Node2D) -> void:
	if body is Player:
		Globals.collectTRoot=true
		tree_root_collect.visible=true

func _on_collect_body_exited(body: Node2D) -> void:
	if body is Player:
		Globals.collectTRoot=false
		tree_root_collect.visible=false

func _on_boar_1_body_entered(body: Node2D) -> void:
	if body is Player:
		BoarGlobals.whichb=1

func _on_boar_2_body_entered(body: Node2D) -> void:
	if body is Player:
		BoarGlobals.whichb=2

func _on_boar_3_body_entered(body: Node2D) -> void:
	if body is Player:
		BoarGlobals.whichb=3

func _on_boar_4_body_entered(body: Node2D) -> void:
	if body is Player:
		BoarGlobals.whichb=4

func _on_village_here_body_entered(body: Node2D) -> void:
	if body is Player:
		village_also_here.visible=true

func _on_village_here_body_exited(body: Node2D) -> void:
	if body is Player:
		village_also_here.visible=false

func _on_flower_1_body_entered(body: Node2D) -> void:
	if body is Player:
		Globals.collectFlower=true
		flower_collect.visible=true

func _on_flower_1_body_exited(body: Node2D) -> void:
	if body is Player:
		Globals.collectFlower=false
		flower_collect.visible=false

func _on_tr_timer_timeout() -> void:
	trtime-=1
