extends Label

@onready var animated_sprite: AnimatedSprite2D = $"../AnimatedSprite2D"

func _ready():
	# Set the text and start with no characters visible
	var full_text = "Welcome player,
	Eureka once had a very BRIGHT life. However, all of it vanished when 
	Eureka got trapped in a box with barely very little light.
	Help Eureka find light and collect polaroids from the box to escape.
	"
	text = full_text
	visible_ratio = 0.0
	
	# Create a tween and animate over 2 seconds
	var tween = create_tween()
	tween.tween_property(self, "visible_ratio", 1.0, 2.0)
