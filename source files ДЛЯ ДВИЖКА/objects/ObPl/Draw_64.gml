
draw_set_color(c_black)
draw_text(310+1, 20, string(qt))
draw_text(310-1, 20, string(qt))
draw_text(310, 20+1, string(qt))
draw_text(310, 20-1, string(qt))

draw_set_color(c_yellow)
draw_text(310, 20, string(qt))

if (timer[3] > 0){
	draw_set_color(c_black)
	draw_text(310+1, 120, string("двойной прыжок"))
	draw_text(310-1, 120, string("двойной прыжок"))
	draw_text(310, 120+1, string("двойной прыжок"))
	draw_text(310, 120-1, string("двойной прыжок"))

	draw_set_color(c_yellow)
	draw_text(310, 120, string("двойной прыжок"))
}

if (timer[4] > 0){
	draw_set_color(c_black)
	draw_text(310+1, 120, string("бег по воде"))
	draw_text(310-1, 120, string("бег по воде"))
	draw_text(310, 120+1, string("бег по воде"))
	draw_text(310, 120-1, string("бег по воде"))

	draw_set_color(c_yellow)
	draw_text(310, 120, string("бег по воде"))
}

if (timer[6] > 0){
	draw_set_color(c_black)
	draw_text(310+1, 120, string("сюрекены правая кнопка мыши"))
	draw_text(310-1, 120, string("сюрекены правая кнопка мыши"))
	draw_text(310, 120+1, string("сюрекены правая кнопка мыши"))
	draw_text(310, 120-1, string("сюрекены правая кнопка мыши"))

	draw_set_color(c_yellow)
	draw_text(310, 120, string("сюрекены правая кнопка мыши"))
}
