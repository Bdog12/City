extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	SetZoom()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func SetZoom():
	$PlayerCamera.zoom.x = 1
	$PlayerCamera.zoom.y = 1
