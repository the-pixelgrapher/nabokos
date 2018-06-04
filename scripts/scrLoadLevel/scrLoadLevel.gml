/// @desc Load Level

with (objGameObject) instance_destroy();
if (file_exists("clevel.json"))
{
	var _wrapper = LoadJSONFromFile("clevel.json");
	var _list = _wrapper[? "root"];
	//var _list = ds_map_find_value(_wrapper, "root");
	
	for (var i = 0; i < ds_list_size(_list); i++)
	{
		var _map = _list[| i];
		//var _map = ds_list_find_value(_list, i);
		
		var _obj = _map[? "obj"];
		//with (instance_create_layer(0,0,layer,asset_get_index(_obj)))
		with (instance_create_layer(0,0,_map[? "layer"],asset_get_index(_obj)))
		{
			x = _map[? "x"];
			y = _map[? "y"];
			image_angle = _map[? "rot"];
		}
	}
	
	ds_map_destroy(_wrapper);
}