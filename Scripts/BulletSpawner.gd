extends Node


var bullet = load("res://Prefabs/Bullet.tscn")
var timePassed = 0.0
var seconds = 0
var randomGen 
var spawnpoints

# Called when the node enters the scene tree for the first time.
func _ready():
	spawnpoints = get_children()
	print(spawnpoints.size())
	randomize()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timePassed += delta
	
	if(timePassed>=1):
		seconds += 1
		spawnBullet(spawnpoints[randi()%4])
		timePassed = 0


func spawnBullet(spawnNode):
	var bulletInstance = bullet.instance()

	spawnNode.add_child(bulletInstance)
