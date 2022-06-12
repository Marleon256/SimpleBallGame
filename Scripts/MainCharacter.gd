extends KinematicBody

var _score := 0
var _velocity := Vector3(0, 0, 0)
const SPEED := 5
const STOP_RATE := 0.03
const ROTATION_SPEED := deg2rad(5)

func _ready():
	pass

func _physics_process(delta: float) -> void:
	if Input.is_physical_key_pressed(KEY_D) and Input.is_physical_key_pressed(KEY_A):
		_velocity.x = 0	
	if Input.is_physical_key_pressed(KEY_D):
		_velocity.x = SPEED
		$MeshInstance.rotate_z(-ROTATION_SPEED)
	elif Input.is_physical_key_pressed(KEY_A):
		_velocity.x = -SPEED
		$MeshInstance.rotate_z(ROTATION_SPEED)
	else:
		_velocity.x = lerp(_velocity.x, 0, STOP_RATE)
		
	if Input.is_physical_key_pressed(KEY_W) and Input.is_physical_key_pressed(KEY_S):
		_velocity.z = 0	
	if Input.is_physical_key_pressed(KEY_W):
		_velocity.z = -SPEED
		$MeshInstance.rotate_x(-ROTATION_SPEED)
	elif Input.is_physical_key_pressed(KEY_S):
		_velocity.z = SPEED
		$MeshInstance.rotate_x(ROTATION_SPEED)
	else:
		_velocity.z = lerp(_velocity.z, 0, STOP_RATE)
	
	move_and_slide(_velocity)
