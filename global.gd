extends Node

var NewZone


func changeStage(stage_path):
	
	NewZone = "res://SENCES/" + stage_path + ".tscn"
	get_tree().change_scene_to_file(NewZone)
