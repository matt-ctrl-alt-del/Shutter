extends SubViewport

@onready var camera: Camera2D = $Camera2D
@onready var lvl_2_eureka: CharacterBody2D = $"../../../lvl2_eureka"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	camera.position = lvl_2_eureka.position * 3.110
