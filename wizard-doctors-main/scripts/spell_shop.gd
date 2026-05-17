extends Node2D

var yes_quake:=false
var yes_spray:=false
var yes_hole:=false
var yes_dance:=false

func _on_quake_buy_pressed() -> void:
	if Globals.money>=100 and yes_quake==false:
		Globals.money-=100
		yes_quake=true

func _on_spray_buy_pressed() -> void:
	if Globals.money>=250 and yes_spray==false:
		Globals.money-=250
		yes_spray=true

func _on_hole_buy_pressed() -> void:
	if Globals.money>=500 and yes_hole==false:
		Globals.money-=500
		yes_hole=true

func _on_dance_buy_pressed() -> void:
	if Globals.money>=1000 and yes_dance==false:
		Globals.money-=1000
		yes_dance=true

func _on_close_pressed() -> void:
	Globals.close_shop=true
