extends Control
var CurrentTab = 0
var money
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	SetUi()
	SwichTabs()

func SetMoney():
	pass


func SetUi():
	
	if Input.is_action_just_pressed("UserMain"):
		if visible == true:
			visible = false
		elif visible ==false:
			visible =true
func SwichTabs():
	
	if visible == true and Input.is_action_just_pressed("right"):
		CurrentTab += 1 
		if CurrentTab >2:
			CurrentTab = 0
		if visible == true:
			$AnimationPlayer.play(str(CurrentTab))	
	if visible == true and Input.is_action_just_pressed("left"):
		CurrentTab -= 1 
		if CurrentTab <0:
			CurrentTab = 2
		if visible ==true:
			$AnimationPlayer.play(str(CurrentTab))	
	
	
