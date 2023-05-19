extends CharacterBody2D


@export var speed = 500
@export var max_speed = 150
@export var jump_speed = 180
@export var gravity = 400
@export_range(0.0, 1.0) var friction = 0.1
@export_range(0.0 , 1.0) var acceleration = 0.25


func _physics_process(delta):
	var movement_x = Input.get_action_strength("right") - Input.get_action_raw_strength("left")
	if movement_x != 0:
		velocity.x += movement_x * speed *delta
		velocity.x = clamp(velocity.x, -max_speed,max_speed)
	
	
	
	
	
	
	if Input.is_action_just_pressed("space") and is_on_floor():
		velocity.y = jump_speed
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
	#if Input.is_action_just_pressed("interact"):
		#interact()
	
	#motion.y += Gravity--------------
	#------------------------------------velocity.y += gravity* delta
	move_and_slide()

func _on_area_2d_area_entered(area):
	var collision_shape: CollisionShape2D = area.get_node("CollisionShape2D")
	var size: Vector2 = collision_shape.shape.extents * 2
	Camera.change_room(collision_shape.global_position, size)


#func interact() -> void:
	#if interact_ray.is_colliding():
		#close_interact.set_deferred("monitoring", true) 
		#interact_ray.get_collider().player_interact()



	
