#region
var _object = instance_place(x, y, obj_interactable)

 if variable_instance_exists(_object, "interactable") && _object != noone{
	 if _object.interactable == true && obj_player.in_dialog = false{
		 show_debug_message(string(_object.text))
		textbox(_object)
		instance_destroy()
		_object.times_interacted ++
		  }
		if obj_player.in_dialog = true{
			instance_destroy()
		}
 }
 
timer --
if timer <= 0{
instance_destroy()
}
#endregion

