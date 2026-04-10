extends TileMapLayer

@onready var shop: Label = $Shop
@onready var nothing: Label = $Nothing
@onready var nothing_2: Label = $Nothing2
@onready var nothing_3: Label = $Nothing3
@onready var nothing_4: Label = $Nothing4
@onready var nothing_5: Label = $Nothing5
@onready var nothing_6: Label = $Nothing6
@onready var nothing_7: Label = $Nothing7

func _on_area_2d_body_entered(_body: Node2D) -> void:
	nothing_2.visible=true

func _on_area_2d_body_exited(_body: Node2D) -> void:
	nothing_2.visible=false

func _on_area_2d_2_body_entered(_body: Node2D) -> void:
	nothing.visible=true

func _on_area_2d_2_body_exited(_body: Node2D) -> void:
	nothing.visible=false

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
	get_tree().change_scene_to_file("res://scenes/forest.tscn")


func _on_home_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://scenes/clinic.tscn")
