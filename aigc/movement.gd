extends CharacterBody2D

var speed = 500

func _process(delta):
	var motion = Vector2()
	if Input.is_key_pressed(KEY_A):
		motion.x -= 1
	if Input.is_key_pressed(KEY_D):
		motion.x += 1
	if Input.is_key_pressed(KEY_W):
		motion.y -= 1
	if Input.is_key_pressed(KEY_S):
		motion.y += 1
#.normalized()
	motion = motion * speed
	velocity = motion  # Set the velocity property
	move_and_slide()   # This now uses the built-in velocity
	
