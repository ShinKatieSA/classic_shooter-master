extends Area2D

func _process(delta):
	position.y += 0.3
	position.x += 3*cos(position.y * 0.5) * 6 * sin(position.x)
	print(cos(position.y))

func explode():
	set_process(false)
	$Sprite2D.hide()
	$AnimatedSprite2D.play("default")
	await $AnimatedSprite2D.animation_finished
	queue_free()


		
