extends Control

# This matches your exact node names from the image
@onready var polaroid_icons = [
	$HBoxContainer/Polaroid1, 
	$HBoxContainer/Polaroid2, 
	$HBoxContainer/Polaroid3,
	$HBoxContainer/Polaroid4
]

func _ready() -> void:
	# Starts all 4 polaroids at half opacity
	update_polaroid_ui(0) 

func update_polaroid_ui(items_collected: int) -> void:
	for i in range(polaroid_icons.size()):
		if i < items_collected:
			polaroid_icons[i].modulate.a = 1.0 # Full opacity if collected
		else:
			polaroid_icons[i].modulate.a = 0.5 # Half opacity if missing
