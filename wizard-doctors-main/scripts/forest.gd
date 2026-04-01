extends TileMapLayer

@onready var fight: Node2D = $Fight

func _physics_process(delta: float) -> void:
	if Globals.fightb==true:
		get_tree().change_scene_to_file("res://scenes/fight.tscn")
