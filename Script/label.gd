extends Label

@onready var animated_sprite: AnimatedSprite2D = $"../AnimatedSprite2D"

func _ready():
	# Set the text and start with no characters visible
	await get_tree().create_timer(5.0).timeout
	var full_text = "Welcome player,
	Eureka once had a very BRIGHT life. However, all of it vanished when 
	Eureka got trapped in a box with barely very little light.
	Help Eureka find light and collect polaroids from the box to escape.
	
	
	Level 1 Controls: A - Move left, D - Move right, Joystick - Move, Spacebar/Jump Button - Jump, Enter/Light Button - Light
	Level 2 Controls: A - Move left, D - Move right, W - Move up, A - Move down, Joystick - Move
	 
	Light Meter is your life. 
	You cannot exit a level until you have found all polaroids.
	
	This game can be played with a controller.
	Best played with earphones.
	
	"
	text = full_text
	visible_ratio = 0.0
	
	# Create a tween and animate over 2 seconds
	var tween = create_tween()
	tween.tween_property(self, "visible_ratio", 1.0, 2.0)
