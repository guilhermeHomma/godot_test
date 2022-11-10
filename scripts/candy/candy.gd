extends Node2D

var points : int = 0
var base : int = 0

var ant : bool = false

var packing_anim = preload("res://prefabs/packing_anim.tscn")
var ant_sprite = preload("res://prefabs/ant_sprite.tscn")
	
func _ready():
	$Area2D.connect("input_event" , self, "_click")
	pass

func _click(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed: # just mouse click
		if get_parent()._can_open():
			get_parent().IS_ANIM = true
			var path : String = "res://assets/wrap/lol_{0}_opened.png" if base >= 10 else "res://assets/wrap/lol_0{0}_opened.png"
			var packing = packing_anim.instance()
			$packing.queue_free()
			packing.texture = load(path.format([base]))
			packing.IS_ANT = ant
			add_child(packing)
			
			if ant:
				get_parent()._found_and()
				add_child(ant_sprite.instance())
			
			$Area2D/CollisionShape2D.disabled = true
	pass
	
func show_points():
	get_parent().IS_ANIM = false
	get_parent().get_parent().get_node("points_manager")._add_points(points)
	pass

func create_candy(
	base_number : int,
	points_value : int,
	is_ant : int = 0
):
	points = points_value
	base = base_number
	ant = true if is_ant > 0 else false
	
	if is_ant == 0: # normal candy + points
		var candy_sprite = load("res://prefabs/candy_sprite.tscn").instance()
		candy_sprite.get_child(0).text = str(points_value)
		add_child(candy_sprite)

	else:  # candy + ant
		var candy_path : String = "res://assets/eatencandy_0{0}.png".format([is_ant])
		var candy_sprite_ant = Sprite.new()
		candy_sprite_ant.position.y = 30
		candy_sprite_ant.texture = load(candy_path)
		candy_sprite_ant.show_behind_parent = true
		add_child(candy_sprite_ant)
	pass




