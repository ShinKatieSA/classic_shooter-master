extends Area2D

func _process(delta):
	position.y += 0.3
	position.x += 3*cos(position.y * 0.5) * 6 * sin(position.x)
	print(cos(position.y))

func explode():
	queue_free()


func _on_area_entered(area):
	if area.is_in_group("player"):
		area.explode()
		queue_free()
