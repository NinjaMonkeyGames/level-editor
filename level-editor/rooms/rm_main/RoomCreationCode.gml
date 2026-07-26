// INITIALISE PROJECT

window_set_caption("level-editor v" + GM_version);												 // Set window caption text.
global.gui_controller = instance_create_layer(0, 0, "lyr_gui", obj_gui_controller);  // Generate instance of GUI controller.