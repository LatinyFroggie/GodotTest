extends CharacterBody2D

var speed = 250

func _physics_process(_delta):
	var motion = Vector2()

	if Input.is_action_pressed("Left"):
		motion.x -= 1
	if Input.is_action_pressed("Right"):
		motion.x += 1
	if Input.is_action_pressed("Up"):
		motion.y -= 1
	if Input.is_action_pressed("Down"):
		motion.y += 1

	motion = motion.normalized() * speed
	velocity = motion  # Set the velocity property
	move_and_slide()   # This now uses the built-in velocity
