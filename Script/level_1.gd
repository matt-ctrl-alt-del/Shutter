extends Node2D


func _ready() -> void:
	$Fade_transition/AnimationPlayer.play("fade_out")
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	$Fade_transition/AnimationPlayer.play("fade_in")
	get_tree().change_scene_to_file("res://Scenes/level_2.tscn")
