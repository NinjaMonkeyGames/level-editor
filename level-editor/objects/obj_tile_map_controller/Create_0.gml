// CREATES A CONSTRUCTOR CLASS  FOR GENERATING A 2D TIILE MAP

/// @description Generate 2D tile map

global.tile_map_list = [];	// Stores array of tile map structs

function tile_map
(
_x_offset = 64, _y_offset = 32, 
_x_scale = 1, _y_scale = 1,
_x_shift = 0, _y_shift = 0,
_row_qty = 18, _column_qty = 24, 
_row_size = 999, _column_size = 999,
_tile_width = 256, _tile_height = 256,

)  
constructor
{
	// Imported variables
	
	sprite = spr_jungle_temple;
	index = 0;
	
	x_offset = _x_offset;
	y_offset = _y_offset;
	
	x_scale = _x_scale;
	y_scale = _y_scale;
	
	x_shift = _x_shift;
	y_shift = _y_shift;
	
	row_qty = _row_qty;
	column_qty = _column_qty;
	
	row_size = _row_size;
	column_size = _column_size;
	
	tile_width = _tile_width;
	tile_height = _tile_height;
	
	// Calculation variables
	
	angle = 0;
	alpha = 1;
	
    /// @function											set_tile_data
    /// @description									Updates tile_data or initialises first grid. 				

	static set_tile_data= function()
	{
		for (var _row = 0; _row < row_size; ++_row) 
	    {
	        for (var _column = 0; _column < column_size; ++_column) 
	        {
				tile_map_data[_row][_column] = 
				{
					sprite : sprite,
					index : index,
					
					x : x_offset + (_column * (tile_width * x_scale)),
					y : y_offset + (_row * (tile_height * y_scale)),
					
					angle : 0,
					alpha : 1,
				}
			}
		}
	}
	
	set_tile_data();
	
	/// @function			step
    /// @description	Execute step code for grid constructor instance.
	
    static step = function() 
    {	
		
	}
				
	/// @function			draw
    /// @description	Draw tile map based on data stored in data structure.		
				
    static draw = function() 
    {
		
		var _cache_data = tile_map_data;
		
		for (var _row = 0; _row < row_qty; ++_row) 
	    {
	        for (var _column = 0; _column < column_qty; ++_column) 
	        {
	            var _sprite = _cache_data[_row][_column].sprite;
				var _index = _cache_data[_row][_column].index;
				
				var _x = _cache_data[_row][_column].x
				var _y = _cache_data[_row][_column].y;
				
				var _angle = _cache_data[_row][_column].angle;
				var _alpha = _cache_data[_row][_column].alpha;
				

				
				draw_sprite_ext(_sprite, _index, _x, _y, x_scale, y_scale, _angle, c_white, _alpha);
			}
		}
	}
	
	/// @function destroy()
	/// @description Cleans up the instance from the global list and clears data
	
	static destroy = function() 
	{
		
	}
	
	array_push(global.tile_map_list, self); // Add copy of self to grid array.
}

