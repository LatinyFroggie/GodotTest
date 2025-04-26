extends CharacterBody2D

var speed = 250

func _physics_process(_delta):
	var motion = Vector2()

	if Input.is_action_pressed("KEY_A"):
		motion.x -= 1
	if Input.is_action_pressed("KEY_D"):
		motion.x += 1
	if Input.is_action_pressed("KEY_W"):
		motion.y -= 1
	if Input.is_action_pressed("KEY_S"):
		motion.y += 1

	motion = motion.normalized() * speed
	velocity = motion  # Set the velocity property
	move_and_slide()   # This now uses the built-in velocity
