extends Node2D

var polaroids_collected = 0
#var goal_polaroids = 4 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Scenes/thanks.tscn")


func _on_polaroid_1_body_entered(body: Node2D) -> void:
	$Polaroids/Polaroid_1.queue_free()
	polaroids_collected += 1
	%Label.text = "Polaroids Collected: " + (str(polaroids_collected))
	print("+1 Polaroid")


func _on_polaroid_2_body_entered(body: Node2D) -> void:
	$Polaroids/Polaroid_2.queue_free()
	polaroids_collected += 1
	%Label.text = "Polaroids Collected: " + (str(polaroids_collected))
	print("+1 Polaroid")


func _on_polaroid_3_body_entered(body: Node2D) -> void:
	$Polaroids/Polaroid_3.queue_free()
	polaroids_collected += 1
	%Label.text = "Polaroids Collected: " + (str(polaroids_collected))
	print("+1 Polaroid")


func _on_polaroid_4_body_entered(body: Node2D) -> void:
	$Polaroids/Polaroid_4.queue_free()
	polaroids_collected += 1
	%Label.text = "Polaroids Collected: " + (str(polaroids_collected))
	print("+1 Polaroid")
