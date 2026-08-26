depth = -bbox_bottom

if keyboard_check(vk_escape){game_end()} //pra fechar rápido, melhor do que sempre clicar no X da janela

#region input/vars
var left = keyboard_check(vk_left)
var right = keyboard_check(vk_right)
var up = keyboard_check(vk_up)
var down = keyboard_check(vk_down)

interact = keyboard_check_pressed(ord("Z"))
var special = keyboard_check(ord("X")) //special atualmente é usado só pra mecânica de correr

#endregion

#region movement
//essa region inteira deve ta completamente fudida, cuidado com o que você for mecher aqui
if controllable{
	xspd += (right - left) * spd
	yspd += (down - up) * spd
}

var _curr_spd = (special) ? hard_max_spd : soft_max_spd
current_max_spd = lerp(current_max_spd,_curr_spd,.5)
yspd = clamp(yspd, -current_max_spd, current_max_spd)
xspd = clamp(xspd, -current_max_spd, current_max_spd)

	//o jeito de fazer isso que eu achei foi esse :P
	if !right or !left{
		if xspd > 0{xspd --}
		if xspd < 0{xspd ++}
	
		if abs(xspd) <= 1.2 {xspd = 0}
	}
	if !up or !down{
		if yspd > 0{yspd --}
		if yspd < 0{yspd ++}
	
		if abs(yspd) <= 1.2 {yspd = 0}
	}


//a region de colisão ta aqui por que eu tenho medo de deixar acima da de move, e por organização
	#region collision
	if place_meeting(x + xspd, y, obj_collision){
		xspd = 0
	}
	if place_meeting(x , y + yspd, obj_collision){
		yspd = 0
	}
	#endregion
x += xspd
y += yspd
#endregion

#region sprite management
//separei as duas partes em duas regions diferentes por que ambas são repetitivas e eu confundo elas bem facilmente
if controllable{
#region direction
if down{
	dir = 0
}
if up{
	dir = 1
}
if left{
	dir = 2
}
if right{
	dir = 3
}
#endregion

#region management
	if dir = 0{
		sprite_index = spr_down
	}
	if dir = 1{
		sprite_index = spr_up
	}

	//sim, spr_right e spr_left estão trocados, mas eu to com preguiça de arrumar isso, e é mais rápido trocar eles
	if dir = 2{
		sprite_index = spr_right
	}
	if dir = 3{
		sprite_index = spr_left
	}
#endregion
}
#endregion

if interact && controllable{
	if dir = 0{
		instance_create_layer(x, y + 90, "Instances", obj_interact_box)
	}
	if dir = 1{
		instance_create_layer(x, y -30, "Instances", obj_interact_box)
	}
	if dir = 2{
		instance_create_layer(x - 60, y + 20, "Instances", obj_interact_box)
	}
	if dir = 3{
		instance_create_layer(x + 60, y + 20, "Instances", obj_interact_box)
	}
}