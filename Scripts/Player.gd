extends KinematicBody2D

var velocidade : Vector2 = Vector2()
var direction : Vector2 = Vector2()


func read_input():
	velocidade = Vector2()
	
	if Input.is_action_pressed("up"):
		velocidade.y -= 1
		direction = Vector2(0,-1)
		
	if Input.is_action_pressed("down"):
		velocidade.y += 1
		direction = Vector2(0,1)
		
	if Input.is_action_pressed("left"):
		velocidade.x -= 1
		direction = Vector2(-1,0)
		
	if Input.is_action_pressed("rigth"):
		velocidade.x += 1
		direction = Vector2(1,0)
		
	velocidade = velocidade.normalized()
	velocidade = move_and_slide(velocidade * 200)
func _physics_process(_delta):
	read_input()
