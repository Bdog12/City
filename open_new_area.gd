extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("up and down")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Label.visible == true:
		if Input.is_action_just_pressed("interact"):
			get_tree().change_scene_to_file("res://Room.tscn")

			pass


func _on_area_entered(area):#Player enter's 
	$Label.visible = true
	
	


func _on_area_exited(area):
	$Label.visible = false
	
