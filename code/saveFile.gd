extends Node


var player_file = "user://save.dat"
var PlayerPosition

func  _ready():
	pass
	

func save_file():
	var file = FileAccess.open(player_file,FileAccess.WRITE)
	var player_data = CreatePlayerData()
	file.store_var(player_data)
	

func load_file():
	var file = FileAccess.open(player_file,FileAccess.READ)
	if file.file_exists(player_file):
		var loaded_player_data = file.get_var()
		PlayerPosition = loaded_player_data.position
		
		get_tree().current_scene.get_node("PlatformingPlayer").position = PlayerPosition
func CreatePlayerData():
	var PlayerDict = {
		"position" = get_tree().current_scene.get_node("PlatformingPlayer").position,
		"Items" = ItemManger.PlayerItems
 	}
	return PlayerDict
