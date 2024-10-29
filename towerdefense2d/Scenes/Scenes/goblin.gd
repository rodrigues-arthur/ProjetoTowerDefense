extends CharacterBody2D

@export var speed = 200

func _process(delta):
	var parent = get_parent()
	
	if parent.has_method("set_progress") and parent.has_method("get_progress"):
		var current_progress = parent.get_progress()
	
		parent.set_progress(current_progress + speed * delta)
		
		if parent.get_progress_ratio() == 1.0:
			queue_free()
