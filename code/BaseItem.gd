extends Node2D


@export var Item: Resource



# Called when the node enters the scene tree for the first time.
func _ready():
	print(Item.Value)
	
	
	$TextureRect.texture = Item.texture

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
