extends Node2D

export(float) var scalePerSecond = 1
export(float) var secondsToLive = 1
var time = 0

func _process(delta):
	time += delta
	if time >= secondsToLive:
		$Light2D.energy -=.015
		if time >= secondsToLive+1:
			queue_free()
	else:
		scale += Vector2(scalePerSecond, scalePerSecond) * delta
		self_modulate.a -= 0.017
