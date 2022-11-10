extends Label
tool

export (fonts.font_index) var used_font = fonts.font_index.WIN_FONT

func _process(_delta):
	theme = Theme.new()
	theme.default_font = fonts.get_font_by_index(used_font)
	pass 

