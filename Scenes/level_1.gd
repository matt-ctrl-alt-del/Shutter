extends Node2D

@onready fade_animation = $fade_animation
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	fade_animation.show


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
