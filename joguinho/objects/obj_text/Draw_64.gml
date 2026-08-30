var gui_w = display_get_gui_width()
var gui_h = display_get_gui_height()

var box_x = (gui_w / 2) - ((sprite_get_width(spr_textbox) * image_xscale) / 2)
var box_h = sprite_get_height(spr_textbox) * image_yscale
var box_y = gui_h - box_h - 20 + box_offset_y

if talksprite != noone{ box_x = (gui_w / 1.7) - ((sprite_get_width(spr_textbox) * image_xscale) / 2) }

draw_sprite_ext(spr_textbox, 1, box_x, box_y, image_xscale, image_yscale, 0, c_white, 1)
draw_set_font(Font1)

if talksprite != noone{
	draw_sprite_stretched(talksprite, 1, box_x - 310, box_y, 300, 300)
	draw_text_ext(box_x + 20, box_y + 20, text, 32, 900)
}

if talksprite = noone{
	draw_text_ext(box_x + 20, box_y + 20, text, 32, 900)
}