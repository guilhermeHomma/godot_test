extends Node2D

var max_total_points : int = 2000
var min_total_points : int = 400

var ants_in_game : int = 1

var IS_ANIM : bool = false
var FOUND_ANT : bool = false


func _ready():
	if ants_in_game >= get_child_count(): ants_in_game = get_child_count() -2
	_set_candies_config()
	pass 

func _set_candies_config():
	var current_total_points : int = int(rand_range(min_total_points/10, max_total_points/10) * 10)   
	var list_of_points = []
	var list_of_candies = []
	
	for i in get_child_count() / 2: # find random controled values
		var both_total : int = current_total_points / get_child_count() * 2
		var value1 = randi()%both_total
		var value2 = both_total - value1
		list_of_points.append(value2)
		list_of_points.append(value1)
		list_of_candies.append(i*2)
		list_of_candies.append(i*2 +1)
		pass

	var list_of_ants = []
	for ant in ants_in_game: #set ants
		var ant_candy_index = randi()%list_of_candies.size()
		list_of_ants.append(list_of_candies[ant_candy_index])
		list_of_candies.remove(ant_candy_index)
		pass
	
	for i in get_child_count() : #set values
		if list_of_ants.has(i): #if candy has ant
			get_child(i ).create_candy(i+1, 0, randi()%4+1) 
		else:
			get_child(i ).create_candy(i+1, list_of_points[i])
		pass
	pass

func _can_open() -> bool:
	if IS_ANIM or FOUND_ANT or !get_parent().get_node("points_manager").FINISHED_ANIM: return false
	return true


func _found_and():
	FOUND_ANT = true
	
	yield(get_tree().create_timer(4), "timeout")
	
	for i in get_child_count():
		var index = i+1
		var path = "res://assets/wrap/lol_{0}_closed_alpha.png" if index == 10 else "res://assets/wrap/lol_0{0}_closed_alpha.png"
		var sprite = load(path.format([index]))
		if get_child(i).has_node("packing"):
			get_child(i).get_node("packing").texture = sprite
	
	get_parent().get_node("Press_enter_label/AnimationPlayer").play("loop_anim")
	
	pass

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept") and FOUND_ANT:
		get_tree().change_scene("res://scenes/game.tscn")
	pass

