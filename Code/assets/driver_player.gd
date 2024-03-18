extends CharacterBody2D

var speed = 200

func _physics_process(delta):
	#give player direction, vector(x,y)
	var velocity = Vector2(-2,-1)
	if Input.is_action_pressed("ui_right"):
		#move the horizontal dirc: velocity (x) 
		velocity.x = 1
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1 
	if Input.is_action_pressed("ui_down"):
		velocity.y = 1
	velocity = velocity.normalized() 
	#move_and_slide(velocity * speed)


