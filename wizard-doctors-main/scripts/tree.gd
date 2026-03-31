extends Sprite2D



func _on_behind_body_entered(body: Node2D) -> void:
	if body is Player:
		Globals.behind=true


func _on_behind_body_exited(body: Node2D) -> void:
	if body is Player:
		Globals.behind=false
