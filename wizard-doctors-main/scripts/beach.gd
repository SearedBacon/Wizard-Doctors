extends TileMapLayer

func _on_to_forest_body_entered(body: Node2D) -> void:
	if body is Player:
		get_tree().change_scene_to_file("res://scenes/forest.tscn")
		Globals.left=true
		Globals.right=false
		Globals.up=false
		Globals.down=false
		Globals.gobackforest=true

func _on_fih_1_body_entered(body: Node2D) -> void:
	pass # Replace with function body.

func _on_fih_2_body_entered(body: Node2D) -> void:
	pass # Replace with function body.

func _on_fih_3_body_entered(body: Node2D) -> void:
	pass # Replace with function body.

func _on_fih_4_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
