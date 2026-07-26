// CONTROLS THE BEHAVIOUR OF ALL GUI ELEMENTS

// GRID CONTROLS

// Zoom

if mouse_wheel_down()
{	
	gui_grid.zoom(true);
	
	main_map.x_scale = gui_grid.x_scale;
	main_map.y_scale = gui_grid.y_scale;
	
					tile_map_data[main_map.row_qty][main_map.column_qty].x = x_offset + (main_map.column_qty * (tile_width * x_scale));
				tile_map_data[main_map.row_qty][main_map.column_qty].y = y_offset + (main_map.row_qty * (tile_height * y_scale));
};

if mouse_wheel_up()		
{	
	gui_grid.zoom(false); 
	
	main_map.x_scale = gui_grid.x_scale;
	main_map.y_scale = gui_grid.y_scale;
	with(main_map)
	{
					tile_map_data[main_map.row_qty][main_map.column_qty].x = x_offset + (main_map.column_qty * (tile_width * x_scale));
				tile_map_data[main_map.row_qty][main_map.column_qty].y = y_offset + (main_map.row_qty * (tile_height * y_scale));
	}
}; 

// Pan grid (slow)

if keyboard_check_pressed(vk_left)		then gui_grid.shift_x(-1);
if keyboard_check_pressed(vk_right)		then gui_grid.shift_x(1);
if keyboard_check_pressed(vk_up)			then gui_grid.shift_y(-1);
if keyboard_check_pressed(vk_down)	then gui_grid.shift_y(1);

// Pan grid (fast)

if keyboard_check(vk_control)
{
	if keyboard_check(vk_left)					then gui_grid.shift_x(-1);
	if keyboard_check(vk_right)					then gui_grid.shift_x(1);
	if keyboard_check(vk_up)					then gui_grid.shift_y(-1);
	if keyboard_check(vk_down)				then gui_grid.shift_y(1);
}

// Quit

if keyboard_check(vk_alt)
{
	if keyboard_check(vk_f4)
	{
		gui_grid.destroy();
		game_end();
	}
}
