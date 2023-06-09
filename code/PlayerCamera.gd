extends Camera2D

@export var follow_smoothing: float = 0.1

var smoothing:float

var current_room_center: Vector2
var current_room_size: Vector2 
@onready var view_size: Vector2 = get_viewport_rect().size
var zoom_view_size: Vector2


 
 
func _ready() -> void:
	# Sets smoothing to 1 and back to follow_smoothing
	# I do this so the camera appears as if it starts at the first room not at (0, 0)
	$Ui.scale.x = 1/zoom.x
	$Ui.scale.y = 1/zoom.y
	#smoothing_enabled = false
	smoothing = 1
	await get_tree().create_timer(0.1).timeout
	smoothing = follow_smoothing
	var Player = $"../PlatformingPlayer"
	Player.connect("EnterNewCamareZone",freeCarmera)
func _physics_process(delta: float) -> void:
	# Get view size considering camera zoom
	zoom_view_size = view_size * zoom
 
	# Get target position
	var target_position := calculate_target_position(current_room_center, current_room_size)
 
	# Interpolate(lerp) camera position to target position by the smoothing
	position = lerp(position, target_position, smoothing)
 
 
 
func calculate_target_position(room_center: Vector2, room_size: Vector2) -> Vector2:
	# The distance from the center of the room to the camera boundary on one side.
	# When the room is the same size as the screen the x and y margin are zero
	var x_margin: float = (room_size.x - zoom_view_size.x) / 2
	var y_margin: float = (room_size.y - zoom_view_size.y) / 2
	var return_position: Vector2 = Vector2.ZERO
	# if the zoom_view_size >= room_size the camera position should just be room center
	if x_margin <= -600:
		return_position.x = room_center.x
	# Clamps the return position to the left and right limits if the x_margin is positive
	else:
		var left_limit: float = room_center.x - x_margin
		var right_limit: float = room_center.x + x_margin
		return_position.x = Camera.platforming_player.position.x
 
 
	if y_margin <=-600:
		return_position.y = room_center.y
	else:
		var top_limit: float = room_center.y - y_margin
		var bottom_limit: float = room_center.y + y_margin
		return_position.y = Camera.platforming_player.position.y
 
	return return_position
func freeCarmera():
	##print("free")
	pass
