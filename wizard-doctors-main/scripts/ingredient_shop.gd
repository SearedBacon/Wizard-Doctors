extends Node2D

func _on_tusk_buy_pressed() -> void:
	if Globals.money>=10:
		Globals.money-=10
		BoarGlobals.tusk+=1

func _on_hoof_buy_pressed() -> void:
	if Globals.money>=10:
		Globals.money-=10
		BoarGlobals.hoof+=1

func _on_scale_buy_pressed() -> void:
	if Globals.money>=10:
		Globals.money-=10
		FishGlobals.scale+=1

func _on_bone_buy_pressed() -> void:
	if Globals.money>=10:
		Globals.money-=10
		FishGlobals.bone+=1
