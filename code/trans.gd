extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("tranin")
	await $AnimationPlayer.animation_finished
	queue_free()
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
	
func fadeIN():
	pass
