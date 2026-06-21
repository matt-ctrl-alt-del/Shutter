extends Control

var button_type = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _on_play_pressed() -> void:
	button_type = "start"
	$Fade_transition.show()
	$Fade_transition/Fade_timer.start()
	$Fade_transition/AnimationPlayer.play("fade_in")
	


func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_fade_timer_timeout() -> void:
	if button_type == "start" : 
		get_tree().change_scene_to_file("res://Scenes/prologue.tscn")
