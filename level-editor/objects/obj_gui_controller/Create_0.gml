// INITIALISE GRID OBJECTS AND INSTNCES

global.grid_controller = instance_create_layer(0, 0, "lyr_gui", obj_grid_controller);	            // Generate instance of grid controller object.
gui_grid = new obj_grid_controller.grid();																					// Generate grid constructor instance.