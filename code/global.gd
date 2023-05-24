extends Node





var NewZone

var OldWorldPostionx =0
var OldWorldPostiony = 0
var Returning = false

var saved_scene = null

		
func changeStage(stage_path,returning):
	
	
	NewZone = "res://SENCES/" + stage_path + ".tscn"
	get_tree().change_scene_to_file(NewZone)
	if Returning:
		print(OldWorldPostionx)
		await get_tree().create_timer(.1).timeout
		get_tree().current_scene.get_node("PlatformingPlayer").position.x = OldWorldPostionx
		get_tree().current_scene.get_node("PlatformingPlayer").position.y = OldWorldPostiony 
	
