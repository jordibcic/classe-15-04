extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal patates

# Called when the node enters the scene tree for the first time.
func _ready():
	$"../..".position = Vector2(100,200)
	emit_signal("patates")
	get_tree()

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
