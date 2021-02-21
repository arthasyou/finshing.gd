extends Node2D


func _ready() -> void:
	pass

func _on_cannon_shoot(bullet, _position, _direction):
	var b = bullet.instance()
	add_child(b)
	b.start(_position, _direction)
