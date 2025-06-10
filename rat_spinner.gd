extends Node3D

@export var rotate_speed: float = 5

func _physics_process(delta: float) -> void:
	rotate_y(rotate_speed * delta)
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("speed_up"):
		rotate_speed += 5
	if Input.is_action_just_pressed("speed_down"):
		rotate_speed -= 5	
