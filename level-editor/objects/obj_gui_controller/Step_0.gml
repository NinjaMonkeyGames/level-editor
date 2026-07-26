// CONTROLS THE BEHAVIOUR OF ALL GUI ELEMENTS

// GRID CONTROLS

// Zoom

if mouse_wheel_down()	{	gui_grid.zoom(true);  }; // Zoom in
if mouse_wheel_up()		{	gui_grid.zoom(false); }; // Zoom out

// Pan grid (slow)

if keyboard_check_pressed(vk_left)		then gui_grid.shift_x(-1);
if keyboard_check_pressed(vk_right)		then gui_grid.shift_x(1);
if keyboard_check_pressed(vk_up)			then gui_grid.shift_y(-1);
if keyboard_check_pressed(vk_down)	then gui_grid.shift_y(1);

// Pan grid (fast)

if keyboard_check(vk_control)
{
	if keyboard_check(vk_left)		then gui_grid.shift_x(-1);
	if keyboard_check(vk_right)		then gui_grid.shift_x(1);
	if keyboard_check(vk_up)		then gui_grid.shift_y(-1);
	if keyboard_check(vk_down)	then gui_grid.shift_y(1);
}