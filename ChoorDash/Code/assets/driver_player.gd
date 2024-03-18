extends CharacterBody2D

var speed = 200

func _process(delta):
	#give player direction, vector(x,y)
	var velocity = Vector2(0,-1)
	

	if Input.is_action_pressed("move_right"):
		#move the horizontal dirc: velocity (x) 
		rotation_degrees = 270
		velocity.x = speed
		velocity.y = 0
		position += velocity * delta

	if Input.is_action_pressed("move_left"):
		rotation_degrees = 90
		velocity.x = -speed
		velocity.y = 0
		position += velocity * delta
		

	if Input.is_action_pressed("move_up"):
		rotation_degrees = 180
		velocity.y = -speed
		velocity.x = 0
		position += velocity * delta
		

	if Input.is_action_pressed("move_down"):
		rotation_degrees = 0
		velocity.y = speed
		velocity.x = 0
		position += velocity * delta


	#velocity = velocity.normalized()

	#move_and_slide(velocity * speed)
