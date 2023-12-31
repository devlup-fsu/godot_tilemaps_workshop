extends CharacterBody2D

var direction : Vector2 = Vector2()

func read_input():
	velocity = Vector2()
	
	if Input.is_action_pressed("player_up"):
		velocity.y -= 1
		direction = Vector2(0, -1)
	if Input.is_action_pressed("player_down"):
		velocity.y += 1
		direction = Vector2(0, 1)
	if Input.is_action_pressed("player_left"):
		velocity.x -= 1
		direction = Vector2(-1, 0)
	if Input.is_action_pressed("player_right"):
		velocity.x += 1
		direction = Vector2(1, 0)
		
	velocity = velocity.normalized()
	velocity = velocity * 200
	move_and_slide()
		
func _physics_process(delta):
	read_input()
