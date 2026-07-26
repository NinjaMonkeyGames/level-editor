// INITIALISE GRID OBJECTS AND INSTNCES

global.grid_controller = instance_create_layer(0, 0, "lyr_gui", obj_grid_controller);						// Generate instance of grid controller object.
gui_grid = new obj_grid_controller.grid();																							// Generate grid constructor instance.

global.tile_map_controller = instance_create_layer(0, 0, "lyr_gui", obj_tile_map_controller);		// Generate instance of tile map controller object.
main_map = new obj_tile_map_controller.tile_map(gui_grid.x_offset);											// Generate tile map constructor instance.
