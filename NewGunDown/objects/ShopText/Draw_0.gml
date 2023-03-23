draw_set_color(c_black);
textWidth = string_width("E");
textHeight = string_height("E");
draw_rectangle(x -  (textWidth / 2), y - (textHeight / 2), x + (textWidth / 2),                  y + (textHeight / 2), false);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x,y,"E");