extends Node

@onready var player_camera := get_tree().current_scene.get_node("PlayerCamera")
@onready var platforming_player: = get_tree().current_scene.get_node("PlatformingPlayer")

var room_pause: bool = false
@export var room_pause_time : float = .2

 
enum {
	UP,
	RIGHT,
	DOWN,
	LEFT,
}
 
func change_room(room_position: Vector2, room_size: Vector2) -> void:
	Camera.player_camera = get_tree().current_scene.get_node("PlayerCamera")
	Camera.platforming_player = get_tree().current_scene.get_node("PlatformingPlayer")
	player_camera.current_room_center = room_position
	player_camera.current_room_size = room_size
 
	room_pause = true
	await get_tree().create_timer(room_pause_time).timeout
	room_pause = false
