extends CharacterBody2D
var speedMult = 300
var delta = 1
func _ready():
	_process(delta)

func _process(delta):
	#push_error("Bruh2")
	if Input.is_physical_key_pressed(KEY_A):
		push_error("Bruh")
	
