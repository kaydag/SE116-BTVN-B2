extends MovingNode

@export var scale_speed = 0.2

func _process(delta: float) -> void:
	super._process(delta)
	scale += Vector3(0.1, 0.1, 0.1) * delta
	
