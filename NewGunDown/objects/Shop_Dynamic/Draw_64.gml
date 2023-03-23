if (global.Grenade == true) {
	
	draw_set_color(c_black);
	textWidth = string_width("Would you like to buy grenades for 200 emeralds?");
	textHeight = string_height("Would you like to buy grenades for 200 emeralds?");
	draw_rectangle(xview -  (textWidth / 2), yview - (textHeight / 2), xview + (textWidth / 2),                  y + (textHeight / 2), false);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(xview,yview,"Would you like to buy grenades for 200 emeralds?");
}