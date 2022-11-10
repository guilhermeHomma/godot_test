extends Node
tool 

enum font_index{WIN_FONT, PARTIAL_FONT, TOTAL_FONT }

func get_font_by_index(index : int) -> BitmapFont:
	if index == font_index.WIN_FONT:
		return get_win_font()
	if index == font_index.PARTIAL_FONT:
		return get_partial_font()
	if index == font_index.TOTAL_FONT:
		return get_total_font()
		
	printerr("invalid font index ")
	return get_partial_font()

func get_win_font() -> BitmapFont:
	var win_font = BitmapFont.new()
	win_font.add_texture(preload("res://assets/fonts/ft_num_bonus_win.png"))
	win_font.add_char(ord("0"), 0, Rect2(59, 95, 50, 90) ) #0
	win_font.add_char(ord("1"), 0, Rect2(221, 95, 43, 92) ) #1
	win_font.add_char(ord("2"), 0, Rect2(116, 191, 49, 92) ) #2
	win_font.add_char(ord("3"), 0, Rect2(116, 94, 52, 94) ) #3
	win_font.add_char(ord("4"), 0, Rect2(0, 0, 57, 93) ) #4
	win_font.add_char(ord("5"), 0, Rect2(57, 189, 52, 95) ) #5
	win_font.add_char(ord("6"), 0, Rect2(112, 0, 54, 93) ) #6
	win_font.add_char(ord("7"), 0, Rect2(167, 0, 56, 98) ) #7
	win_font.add_char(ord("8"), 0, Rect2(0, 187, 56, 100) ) #8
	win_font.add_char(ord("9"), 0, Rect2(0, 93, 54, 95) ) #9
	return win_font
	
func get_partial_font() -> BitmapFont:
	var font = BitmapFont.new()
	font.add_texture(preload("res://assets/fonts/ft_num_bonus_partial.png"))
	font.add_char(ord("0"), 0, Rect2(0, 0, 25, 35) ) #0
	font.add_char(ord("1"), 0, Rect2(98, 0, 14, 34) ) #1
	font.add_char(ord("2"), 0, Rect2(23, 69, 22, 33) ) #2
	font.add_char(ord("3"), 0, Rect2(48, 33, 21, 34) ) #3
	font.add_char(ord("4"), 0, Rect2(0, 35, 24, 33) ) #4
	font.add_char(ord("5"), 0, Rect2(49, 0, 20, 34) ) #5
	font.add_char(ord("6"), 0, Rect2(26, 0, 22, 35) ) #6
	font.add_char(ord("7"), 0, Rect2(25, 35, 21, 32) ) #7
	font.add_char(ord("8"), 0, Rect2(46, 68, 22, 35) ) #8
	font.add_char(ord("9"), 0, Rect2(0, 69, 22, 35) ) #9
	return font
	
func get_total_font() -> BitmapFont:
	var font = BitmapFont.new()
	font.add_texture(preload("res://assets/fonts/ft_num_bonus_total.png"))
	font.add_char(ord("0"), 0, Rect2(0, 65, 48, 66) ) #0
	font.add_char(ord("1"), 0, Rect2(202, 93, 27, 64) ) #1
	font.add_char(ord("2"), 0, Rect2(50, 0, 41, 66) ) #2
	font.add_char(ord("3"), 0, Rect2(92, 64, 39, 63) ) #3
	font.add_char(ord("4"), 0, Rect2(0, 0, 47, 65) ) #4
	font.add_char(ord("5"), 0, Rect2(92, 0, 41, 65) ) #5
	font.add_char(ord("6"), 0, Rect2(0, 129, 44, 68) ) #6
	font.add_char(ord("7"), 0, Rect2(88, 129, 41, 64) ) #7
	font.add_char(ord("8"), 0, Rect2(48, 64, 43, 65) ) #8
	font.add_char(ord("9"), 0, Rect2(44, 129, 44, 67) ) #9
	return font
