/// @ desc Save Level Editor

//create a root list
var _root_list = ds_list_create();

//for every instance, create a map
with (objGameObject)
{
	var _map = ds_map_create();
	ds_list_add(_root_list,_map);
	ds_list_mark_as_map(_root_list,ds_list_size(_root_list)-1);
	
	var _obj = object_get_name(object_index);
	ds_map_add (_map,"obj",_obj);
	ds_map_add(_map,"layer",layer_get_name(layer));
	ds_map_add(_map,"x",x);
	ds_map_add(_map,"y",y);
	ds_map_add(_map,"rot",image_angle);
}

//wrap the root list up in a map
var _wrapper = ds_map_create();
ds_map_add_list(_wrapper,"root",_root_list);

//save all to string
var _string  = json_encode(_wrapper);
SaveStringToFile("clevel.json",_string);

//NUKE DATA!!!
ds_map_destroy(_wrapper);

show_debug_message("SAVED!")