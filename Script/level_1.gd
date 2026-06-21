extends Node2D


var polaroids_collected = 0
var goal_polaroids = 4



func _ready() -> void:
	$Fade_transition/AnimationPlayer.play("fade_out")
	#$Area2D.hide()
	
	if polaroids_collected:
		polaroids_collected = 4
		#$Area2D.show()
		#$Area2D/AnimatedSprite2D.show()
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	$Fade_transition/AnimationPlayer.play("fade_in")
	get_tree().change_scene_to_file("res://Scenes/level_2.tscn")


func _on_texture_button_pressed() -> void:
	Input.action_press("jump")
	#$CanvasLayer/TextureButton.texture_pressed.show()
	Input.action_release("jump")
	
	
func _on_polaroid_1_body_entered(body: Node2D) -> void:
	$Polaroids/Polaroid_1.queue_free()
	polaroids_collected += 1
	$CanvasLayer/Label.text = "Polaroids Collected: " + (str(polaroids_collected))
	print("+1 Polaroid")
	


func _on_polaroid_2_body_entered(body: Node2D) -> void:
	$Polaroids/Polaroid_2.queue_free()
	polaroids_collected += 1
	$CanvasLayer/Label.text = "Polaroids Collected: " + (str(polaroids_collected))
	print("+1 Polaroid")
	
	

func _on_polaroid_3_body_entered(body: Node2D) -> void:
	$Polaroids/Polaroid_3.queue_free()
	polaroids_collected += 1
	$CanvasLayer/Label.text = "Polaroids Collected: " + (str(polaroids_collected))
	print("+1 Polaroid")


func _on_polaroid_4_body_entered(body: Node2D) -> void:
	$Polaroids/Polaroid_4.queue_free()
	polaroids_collected += 1
	$CanvasLayer/Label.text = "Polaroids Collected: " + (str(polaroids_collected))
	print("+1 Polaroid")
