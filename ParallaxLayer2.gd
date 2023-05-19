extends ParallaxLayer

@export var cloudspeed = -10

func _process(delta):
	self.motion_offset.x += cloudspeed * delta
