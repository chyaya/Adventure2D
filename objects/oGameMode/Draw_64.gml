/// @description Insert description here
// You can write your code in this editor


draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_sprite(sprCompassBG, 1, 100, 100);
draw_sprite_ext(sprCompassDir, 1, 100, 100, 0.5, 0.5, 0, c_white, 1);




var text_x = 50, text_y = 200;
var line_h = 30, offset = 280;

text_y += line_h;

draw_text(text_x, text_y, "Health:");
draw_text(text_x + offset, text_y,
	string(oPlayer.m_CurHealth) + "/" + string(oPlayer.m_MaxHealth));
text_y += line_h;

draw_text(text_x, text_y, "Food:");
draw_text(text_x + offset, text_y,
	string(m_CurFood) + "/" + string(m_MaxFood));
text_y += line_h;


