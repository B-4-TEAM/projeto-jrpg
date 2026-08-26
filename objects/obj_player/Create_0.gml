//movimentação
spd = 5
soft_max_spd = 6
hard_max_spd = 13
current_max_spd = soft_max_spd

yspd = 0
xspd = 0

controllable = true
in_dialog = false

//o sprite em 64x64 é meio pequeno, então preferi aumentar
image_xscale = 2.7
image_yscale = 2.7

//sprite
dir = 0
spr_up = spr_player_up
spr_down = spr_player_down
spr_left = spr_player_left
spr_right = spr_player_right

if !instance_exists(obj_music_player){
	instance_create_layer(x,y,"Instances",obj_music_player)
}