extends KinematicBody2D

class_name Fish

signal dead

export (int) var speed

onready var parent = get_parent()


var velocity: Vector2 = Vector2.ZERO

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	control(delta)
	move_and_slide(velocity)

func control(delta: float) -> void:
	if parent is PathFollow2D:
		parent.set_offset(parent.get_offset() + speed * delta)
		position = Vector2.ZERO
	else:
		pass


func _on_Area2D_body_entered(body: Node) -> void:
	body.queue_free()
	pass # Replace with function body.
