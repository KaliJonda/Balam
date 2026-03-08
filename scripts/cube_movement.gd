extends Node3D

@export var float_height: float = 0.2
@export var float_speed: float = 0.5
@export var rotation_speed: float = 0.5

var start_y: float
var time: float = 0.0

func _ready():
	start_y = global_position.y

func _process(delta):
	time += delta
	
	# Movimiento vertical usando seno
	var offset = sin(time * float_speed) * float_height
	global_position.y = start_y + offset
	
	# Rotación constante
	rotate_y(rotation_speed * delta)
