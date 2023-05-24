extends Area2D
const Ballon = preload("res://SENCES/balloon.tscn")
@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"

var Player 

func _ready():
	$AnimationPlayer.play("up and down")
	Player = get_tree().current_scene.get_node("PlatformingPlayer")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Label.visible == true:
		if Input.is_action_just_pressed("interact"):
			ItemManger.NewestItem = $"..".Item.Name
			var ballon:Node = Ballon.instantiate()
			get_tree().current_scene.add_child(ballon)
			ballon.start(dialogue_resource,dialogue_start)
			ItemManger.PlayerItems.append($"..".Item)
			
					#color = fruit["color"]
				
			for PlayerItems in ItemManger.PlayerItems:
				print(PlayerItems.Name)	
			get_parent().queue_free()
			pass


func _on_area_entered(area):#Player enter's 
	$Label.visible = true
	
	


func _on_area_exited(area):
	$Label.visible = false
