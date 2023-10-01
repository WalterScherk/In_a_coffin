extends Node2D

var hope
var isPanicking
var punches
var isInjured
var cronometer
var punchInput
var spawnedThing

# Called when the node enters the scene tree for the first time.
func _ready():
	hope = 100
	punches = 0
	isInjured = false
	spawnedThing = $PoppingTextManager.SpawnText("Hola")
	$Daño.self_modulate.a = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_select") && punches < 20:
		punches += 1
		print("Punches")
		if(punches % 5 == 0):
			$Daño.self_modulate.a += 0.1
		#transparencia -= max transparencia / 1000
	if Input.is_action_just_pressed("ui_select") && punches >= 20:
		print("You can't punch anymore")

	if hope > 0:
		hope -= 1 * delta
