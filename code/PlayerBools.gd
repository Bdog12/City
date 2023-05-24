extends Node

var Talking = false
var OldWorldPostion 



func SetLocation():
	var Player = get_tree().current_scene.get_node("PlatformingPlayer")
	Player.position = OldWorldPostion
