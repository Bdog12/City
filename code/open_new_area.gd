extends Area2D
@export var NewZone = ""
@onready var enterPointx = $enterpoint.position.x
@onready var enterPointy = $enterpoint.position.y
# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("up and down")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Label.visible == true:
		if Input.is_action_just_pressed("interact"):
			if 	Global.Returning == false:
				Global.OldWorldPostionx = 	get_tree().current_scene.get_node("PlatformingPlayer").position.x
				Global.OldWorldPostiony = 	get_tree().current_scene.get_node("PlatformingPlayer").position.y
				Global.changeStage(NewZone,false)
				Global.Returning = true
			elif Global.Returning == true:
				Global.changeStage(NewZone,false)
				Global.Returning =false
			pass


func _on_area_entered(area):#Player enter's 
	$Label.visible = true
	
	


func _on_area_exited(area):
	$Label.visible = false
	
