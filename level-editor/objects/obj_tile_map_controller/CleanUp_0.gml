/// @description Cleans up the instance from the global list and clears data

for (var _i = 0; _i < array_length(global.tile_map_list); _i++)
{
	global.tile_map_list[_i].destroy();
}
