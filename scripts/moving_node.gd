extends Node3D
class_name MovingNode

var velocity:float = 1.0
var distance: float = 0

func _init() -> void:
	print("Node duoc khoi tao")

func _ready() -> void:
	print("Node đã sẵn sàng trong scene tree")

func _process(delta: float) -> void:
	position.x += velocity * delta
	distance += velocity * delta
	
	if distance >= 3:
		queue_free()

func _exit_tree() -> void:
	print("Node bị xóa khỏi scene tree")
