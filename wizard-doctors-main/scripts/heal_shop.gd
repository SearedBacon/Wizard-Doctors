extends Node2D

@onready var time: Label = $Time
var seconds:=59
var minutes:=4

func _physics_process(delta: float) -> void:
	#time.text="Shop resets in "+str(minutes)+":"+str(seconds)
	#if seconds<=-1:
		#seconds=59
		#minutes-=1
	#if minutes<=-1:
		#minutes=4
	#if seconds<=9:
		#time.text="Shop resets in "+str(minutes)+":0"+str(seconds)
		pass

func _on_timer_timeout() -> void:
	seconds-=1

func _on_basic_buy_pressed() -> void:
	pass # Replace with function body.

func _on_big_buy_pressed() -> void:
	pass # Replace with function body.

func _on_great_buy_pressed() -> void:
	pass # Replace with function body.

func _on_max_buy_pressed() -> void:
	pass # Replace with function body.
