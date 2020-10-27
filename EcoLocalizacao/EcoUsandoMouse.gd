extends Node

onready var Player = $Player
onready var playerPos = Vector2(Player.position.x,Player.position.y)
onready var playerLastPos = playerPos
var countLastPos = 0.0
var ecoScene = preload("res://EcoLocalizacao/EcoLocalizacaoLuz.tscn")

#func _input(event):
#	if event.is_action_pressed("eco"):
#		var eco = ecoScene.instance()
#		eco.position = event.position
#		add_child(eco)
#
func _process(delta):
	countLastPos+= delta
	playerPos = Vector2(Player.position.x,Player.position.y)
	if countLastPos>=.5:
		countLastPos = 0
		if playerLastPos.distance_to(Player.position) > 50:
			var eco = ecoScene.instance()
			eco.position = playerPos
			add_child(eco)
			playerLastPos = playerPos
		
