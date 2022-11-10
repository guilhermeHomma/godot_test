extends Sprite

var IS_ANT : bool = false


func _ready():
	$AudioOpen.connect( "finished" , self, "_finish_open_sound" )
	_result_audio()
	pass 

func _result_audio():
	var path : String = "res://assets/sounds/acerto.ogg" if !IS_ANT else "res://assets/sounds/erro.ogg"
	$AudioResult.stream = load(path)
	yield(get_tree().create_timer(1.4), "timeout")
	$AudioResult.play()
	pass

func _finish_open_sound():
	if get_parent().has_method("show_points"):
		get_parent().show_points()
	pass

