extends Control

var button_type = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CanvasLayer/Fade_transition/AnimationPlayer.play("fade_out")
	await $CanvasLayer/Fade_transition/AnimationPlayer.animation_finished
	

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/prologue.tscn")


func _on_exit_pressed() -> void:
	$CanvasLayer/Fade_transition/AnimationPlayer.play("fade_in")
	get_tree().quit()

# button_type = "start"
# 	$CanvasLayer/Fade_transition.show()
# 	$CanvasLayer/Fade_transition/Fade_timer.start()
# 	$CanvasLayer/Fade_transition/AnimationPlayer.play("fade_in")

# func _on_fade_timer_timeout() -> void:
# 	if button_type == "start" :
# 		$CanvasLayer/Fade_transition/Fade_timer.stop()
# 		$CanvasLayer/Fade_transition/AnimationPlayer.play("fade_in")
# 		await $CanvasLayer/Fade_transition/AnimationPlayer.animation_finished
 #		get_tree().change_scene_to_file("res://Scenes/prologue.tscn")
