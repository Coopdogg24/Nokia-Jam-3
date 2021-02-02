extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.get_child(0).get_child(0).get_child(0).play("BulletFly")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_Area2D_area_entered(body):
	print(body.name)
	if body.name == "ShieldArea":
		self.queue_free()
