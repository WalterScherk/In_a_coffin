extends Node2D

var hope
var isPanicking
var punches
var isInjured
var cronometer
var punchInput

# Called when the node enters the scene tree for the first time.
func _ready():
	hope = 100
	punches = 0
	isInjured = false
	$PoppingTextManager.SpawnText("Hola")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_just_pressed("ui_select"):
		punches += 1
		print(punches)

	if hope > 0:
		hope -= 1 * delta
	
