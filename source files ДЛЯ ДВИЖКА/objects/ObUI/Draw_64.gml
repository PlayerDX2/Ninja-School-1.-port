//draw_healthbar(x - 22, y - 331, x + 43, y - 327, ObPl.plhp, c_gray, c_red, c_red, 0, 0, 0)

draw_sprite(UIbar, 1, 109, 25)

draw_healthbar(88, 14, 153, 18, ObPl.plhp, c_gray, c_red, c_red, 0, 0, 0)
draw_healthbar(88, 26, 153, 30, ObPl.plmp, c_gray, c_blue, c_blue, 0, 0, 0)
draw_healthbar(41, 38, 155, 39, ObPl.plexp / ObPl.pllv, c_gray, c_silver, c_silver, 0, 0, 0)

draw_set_font(Font1)
draw_set_color(c_white)
draw_text_transformed(48, 16, string(ObPl.pllv), 1.5, 1.5, 0)
draw_text_transformed(175, 13, string(ObPl.plmn), 1, 1, 0)
draw_text_transformed(176, 25, string(ObPl.schp), 1, 1, 0)
draw_text_transformed(196, 25, string(ObPl.scmp), 1, 1, 0)
