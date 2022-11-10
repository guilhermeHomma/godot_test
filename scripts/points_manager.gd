extends Node2D

var current_points : int = 0 #real amount

var drawn_current_points : int = 0 
var drawn_total_points : int = 0

var FINISHED_ANIM : bool = true

func _add_points(amount : int): #called by candy.gd
	drawn_current_points = current_points
	drawn_total_points = static_var.TOTAL_POINTS
	
	current_points += amount
	static_var.TOTAL_POINTS += amount
	pass

func _process(delta): #animation
	drawn_current_points = int(move_toward(drawn_current_points, current_points, 10 )  )
	drawn_total_points = int(move_toward(drawn_total_points, static_var.TOTAL_POINTS, 10 )  )
	
	if drawn_current_points == current_points and static_var.TOTAL_POINTS == drawn_total_points:
		FINISHED_ANIM = true
	else:
		FINISHED_ANIM = false
		
	$Total_label.text = str(drawn_current_points) 
	$Current_label.text = str(drawn_total_points)
	pass
