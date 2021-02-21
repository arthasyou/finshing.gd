extends RigidBody2D

class_name Bullet

export (int) var speed = 100

func start(_position: Vector2, _derection:Vector2) -> void:
	position = _position
	rotation = _derection.angle()
	linear_velocity = _derection * speed

func _process(delta: float) -> void:
	rotation = linear_velocity.angle()
	pass

func _explode():
	queue_free()

func _on_Bullet_body_entered(body: Node) -> void:
	if body is Fish:
		_explode()
