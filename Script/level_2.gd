extends Node2D

var polaroids_collected = 0
#var goal_polaroids = 4 

@export var max_light: float = 100.0
@onready var current_light: float = max_light
@export var light_drain_rate: float = 0.25 # Loses 5 light per second

@export var toggle_light: float = 100.0
@onready var current_energy: float = toggle_light
@export var light_supp_rate: float = 5.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CanvasLayer/Fade_transition/AnimationPlayer.play("fade_out")
	await $CanvasLayer/Fade_transition/AnimationPlayer.animation_finished
	$CanvasLayer/CameraUI.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	current_light -= light_drain_rate * delta
	current_light = clamp(current_light, 0.0, max_light)
	$CanvasLayer/LightMeter.value = current_light
	
	if current_light <= 0:
		get_tree().reload_current_scene()
		
	current_energy += light_supp_rate * delta
	current_energy = clamp(current_energy, 0.0, toggle_light)
	$CanvasLayer/EnergyMeter.value = current_energy
	
	if Input.is_action_just_pressed("light"):
		current_energy = 0
	
	if current_energy >= 100:
		$CanvasLayer/Light.show()
	else:
		$CanvasLayer/Light.hide()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "lvl2_eureka": 
		if polaroids_collected >= 4:
			print("All polaroids collected! Advancing level...")
			$CanvasLayer/Fade_transition/AnimationPlayer.play("fade_in")
			await $CanvasLayer/Fade_transition/AnimationPlayer.animation_finished
			get_tree().change_scene_to_file("res://Scenes/thanks.tscn")
		else:
			print("The portal is locked! You only have " + str(polaroids_collected) + "/4 polaroids.")
			# Optional: Trigger an onscreen message or sound effect to alert the player
	


func _on_polaroid_1_body_entered(body: Node2D) -> void:
	$Polaroids/Polaroid_1.queue_free()
	polaroids_collected += 1
	%Label.text = "Polaroids Collected: " + (str(polaroids_collected))
	print("+1 Polaroid")
	$CanvasLayer/Polaroid_tracker/HBoxContainer/Polaroid1.modulate.a = 1.0
	$CanvasLayer/CameraUI.show()
	$CanvasLayer/CameraUI/Frame/AnimationPlayer.play("fadein_frame")
	await $CanvasLayer/CameraUI/Frame/AnimationPlayer.animation_finished
	$CanvasLayer/CameraUI/Frame/AnimationPlayer.play("fadeout_frame")
	await $CanvasLayer/CameraUI/Frame/AnimationPlayer.animation_finished
	$CanvasLayer/CameraUI.hide()


func _on_polaroid_2_body_entered(body: Node2D) -> void:
	$Polaroids/Polaroid_2.queue_free()
	polaroids_collected += 1
	%Label.text = "Polaroids Collected: " + (str(polaroids_collected))
	print("+1 Polaroid")
	$CanvasLayer/Polaroid_tracker/HBoxContainer/Polaroid2.modulate.a = 1.0
	$CanvasLayer/CameraUI.show()
	$CanvasLayer/CameraUI/Frame/AnimationPlayer.play("fadein_frame")
	await $CanvasLayer/CameraUI/Frame/AnimationPlayer.animation_finished
	$CanvasLayer/CameraUI/Frame/AnimationPlayer.play("fadeout_frame")
	await $CanvasLayer/CameraUI/Frame/AnimationPlayer.animation_finished
	$CanvasLayer/CameraUI.hide()


func _on_polaroid_3_body_entered(body: Node2D) -> void:
	$Polaroids/Polaroid_3.queue_free()
	polaroids_collected += 1
	%Label.text = "Polaroids Collected: " + (str(polaroids_collected))
	print("+1 Polaroid")
	$CanvasLayer/Polaroid_tracker/HBoxContainer/Polaroid3.modulate.a = 1.0
	$CanvasLayer/CameraUI.show()
	$CanvasLayer/CameraUI/Frame/AnimationPlayer.play("fadein_frame")
	await $CanvasLayer/CameraUI/Frame/AnimationPlayer.animation_finished
	$CanvasLayer/CameraUI/Frame/AnimationPlayer.play("fadeout_frame")
	await $CanvasLayer/CameraUI/Frame/AnimationPlayer.animation_finished
	$CanvasLayer/CameraUI.hide()


func _on_polaroid_4_body_entered(body: Node2D) -> void:
	$Polaroids/Polaroid_4.queue_free()
	polaroids_collected += 1
	%Label.text = "Polaroids Collected: " + (str(polaroids_collected))
	print("+1 Polaroid")
	$CanvasLayer/Polaroid_tracker/HBoxContainer/Polaroid4.modulate.a = 1.0
	$CanvasLayer/CameraUI.show()
	$CanvasLayer/CameraUI/Frame/AnimationPlayer.play("fadein_frame")
	await $CanvasLayer/CameraUI/Frame/AnimationPlayer.animation_finished
	$CanvasLayer/CameraUI/Frame/AnimationPlayer.play("fadeout_frame")
	await $CanvasLayer/CameraUI/Frame/AnimationPlayer.animation_finished
	$CanvasLayer/CameraUI.hide()


func _on_light_pressed() -> void:
		current_energy = 0
		$lvl2_eureka/PointLight2D3.texture_scale = 4.0
		await get_tree().create_timer(2.0).timeout
		$lvl2_eureka/PointLight2D3.texture_scale = 2.0
		
