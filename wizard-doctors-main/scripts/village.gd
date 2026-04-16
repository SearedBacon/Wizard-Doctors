extends TileMapLayer

@onready var shop: Label = $Shop
@onready var heals: Label = $Heals
@onready var potion_stuff: Label = $PotionStuff
@onready var nothing_3: Label = $Nothing3
@onready var nothing_4: Label = $Nothing4
@onready var nothing_5: Label = $Nothing5
@onready var nothing_6: Label = $Nothing6
@onready var nothing_7: Label = $Nothing7
@onready var player: Player = $Player

func _physics_process(delta: float) -> void:
	if Globals.goback==true:
		player.global_position=Vector2(1020,282)
		Globals.goback=false

func _on_area_2d_body_entered(_body: Node2D) -> void:
	potion_stuff.visible=true

func _on_area_2d_body_exited(_body: Node2D) -> void:
	potion_stuff.visible=false

func _on_area_2d_2_body_entered(_body: Node2D) -> void:
	heals.visible=true

func _on_area_2d_2_body_exited(_body: Node2D) -> void:
	heals.visible=false

func _on_area_2d_3_body_entered(_body: Node2D) -> void:
	shop.visible=true
	Globals.shop=true

func _on_area_2d_3_body_exited(_body: Node2D) -> void:
	shop.visible=false
	Globals.shop=false

func _on_area_2d_4_body_entered(_body: Node2D) -> void:
	nothing_3.visible=true

func _on_area_2d_4_body_exited(_body: Node2D) -> void:
	nothing_3.visible=false

func _on_area_2d_5_body_entered(_body: Node2D) -> void:
	nothing_4.visible=true

func _on_area_2d_5_body_exited(_body: Node2D) -> void:
	nothing_4.visible=false

func _on_area_2d_6_body_entered(_body: Node2D) -> void:
	nothing_5.visible=true

func _on_area_2d_6_body_exited(_body: Node2D) -> void:
	nothing_5.visible=false

func _on_area_2d_7_body_entered(_body: Node2D) -> void:
	nothing_6.visible=true

func _on_area_2d_7_body_exited(_body: Node2D) -> void:
	nothing_6.visible=false

func _on_area_2d_8_body_entered(_body: Node2D) -> void:
	nothing_7.visible=true

func _on_area_2d_8_body_exited(_body: Node2D) -> void:
	nothing_7.visible=false

func _on_leave_body_entered(body: Node2D) -> void:
	Globals.goback=true
	get_tree().change_scene_to_file("res://scenes/forest.tscn")

func _on_home_body_entered(body: Node2D) -> void:
	Globals.goback=false
	get_tree().change_scene_to_file("res://scenes/clinic.tscn")

func _on_area_2d_9_body_entered(body: Node2D) -> void:
	if body is Player:
		Globals.behind=true

func _on_area_2d_9_body_exited(body: Node2D) -> void:
	if body is Player:
		Globals.behind=false
