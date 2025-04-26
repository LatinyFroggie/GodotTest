extends CharacterBody2D
var speedMult = 300
func _ready():
	movement()
	push_error("Bruh1")
func movement():
	push_error("Bruh2")
	if Input.is_key_pressed(up):
		push_error("bruh3")
