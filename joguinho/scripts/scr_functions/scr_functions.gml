function textbox(_object){
	if !instance_exists(obj_text){
					instance_create_layer(x,y,"Instances", obj_text)
					//obtendo a língua e o texto
					if global.language = "PT"{
						obj_text.text = _object.text
					}
					if global.language = "EN"{
						obj_text.text = _object.textE
					}
					
					//obtendo o talksprite
						if _object.talksprite != noone{
						obj_text.talksprite = _object.talksprite
					}
					
					//obtendo o soundbite
					if variable_instance_exists(_object,"soundbite"){
						if audio_is_playing(_object.soundbite){
							audio_stop_sound(_object.soundbite)
							}
							audio_play_sound(_object.soundbite, 1, 0)
						}
				}
				obj_player.controllable = false
}