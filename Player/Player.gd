extends "res://Cannon/Cannon.gd"

func control(delta: float) -> void:
	$Turret.look_at(get_global_mouse_position())
	fire_cmd()
	#rotate_cmd(delta)
	

func rotate_cmd(delta: float) -> void:	
	var rotation_direction = 0
	if Input.is_action_pressed("turn_right"):
		rotation_direction += 1
	if Input.is_action_pressed("turn_left"):
		rotation_direction -= 1
	
	rotation += rotation_speed * rotation_direction * delta
	Vector2(2,2).rotated(rotation)

func fire_cmd():
	if Input.is_action_pressed("fire"):
		shoot()
