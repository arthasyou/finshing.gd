extends StaticBody2D

class_name Cannon

signal shoot

export (PackedScene) var Bullet
export (float) var gun_cooldown
export (float) var rotation_speed

var can_shoot = true 

func _ready() -> void:
	$GunTimer.wait_time = gun_cooldown

func _physics_process(delta: float) -> void:
	control(delta)
	pass

func control(delta: float) -> void:
	pass

func shoot():
	if can_shoot:
		can_shoot = false
		$GunTimer.start()
		var direction = Vector2(1,0).rotated($Turret.global_rotation)
		emit_signal('shoot', Bullet, $Turret/Muzzle.global_position, direction)

func _on_GunTimer_timeout() -> void:
	can_shoot = true
