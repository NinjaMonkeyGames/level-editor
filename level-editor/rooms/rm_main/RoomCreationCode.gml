// INITIALISE PROJECT

window_set_caption("level-editor v" + GM_version);																// Set window caption text.
global.grid_controller = instance_create_layer(0, 0, "lyr_gui", obj_grid_controller);	            // Generate instance of grid controller object.
example_grid = new obj_grid_controller.grid();																			// Generate example grid instance.