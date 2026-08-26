function textbox(_object){
	if !instance_exists(obj_text){
					instance_create_layer(x,y,"Instances", obj_text)
					obj_text.text = _object.text
						if _object.talksprite != noone{
						obj_text.talksprite = _object.talksprite
					}
					if variable_instance_exists(_object,"soundbite"){
						if audio_is_playing(_object.soundbite){
							audio_stop_sound(_object.soundbite)
							}
							audio_play_sound(_object.soundbite, 1, 0)
						}
				}
				obj_player.controllable = false
}