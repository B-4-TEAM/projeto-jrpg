#region
var _object = instance_place(x, y, obj_interactable)

 if variable_instance_exists(_object, "interactable") && _object != noone{
	 if _object.interactable == true && obj_player.in_dialog = false{
		textbox(_object) 
		//textbox() é uma função pra chamar uma caixa de texto, com a variável de _object, que fazendo desse jeito me parece bem modular
		
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

