extends CharacterBody2D

var speed = 200

func _physics_process(delta):
	#give player direction, vector(x,y)
	var velocity = Vector2(0,-1)
	if Input.is_action_pressed("move_right"):
		#move the horizontal dirc: velocity (x) 
		velocity.x = 1
		velocity.y = 0
		
	
	if Input.is_action_pressed("move_left"):
		velocity.x = -1
		velocity.y = 0
		
	if Input.is_action_pressed("move_up"):
		velocity.y = -1 
		velocity.x = 0
		
	if Input.is_action_pressed("move_down"):
		velocity.y = 1
		velocity.x = 0
		
	velocity = velocity.normalized() 
	
	#move_and_slide(velocity * speed)
