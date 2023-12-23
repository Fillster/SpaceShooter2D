extends Node2D

@onready var visible_on_screen_notifier_2d = $VisibleOnScreenNotifier2D
@onready var scale_component = $ScaleComponent

# Called when the node enters the scene tree for the first time.
func _ready():
	visible_on_screen_notifier_2d.screen_exited.connect(queue_free)
	scale_component.tween_scale()
