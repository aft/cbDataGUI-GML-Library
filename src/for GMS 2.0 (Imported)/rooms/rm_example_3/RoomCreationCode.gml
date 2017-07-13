with obj_fizzy_text scr_ft_set_message("Folders");

// Create a folder named 'Flow Field'
var folder_flow = scr_cbDataGUI_add_folder("Flow Field");

// Pass the folder as a last argument
scr_cbDataGUI_add(obj_fizzy_text, "pSpeed", cbData_type.number, folder_flow);
scr_cbDataGUI_set_range(obj_fizzy_text, "pSpeed", -2.5, 2.5);

// Pass the folder as a last argument
scr_cbDataGUI_add(obj_fizzy_text, "noiseStrength", cbData_type.number, folder_flow);
scr_cbDataGUI_set_range(obj_fizzy_text, "noiseStrength", 1, 50);
// Sets the increment/decrement step size
scr_cbDataGUI_set_step(obj_fizzy_text, "noiseStrength", 5); 
scr_cbDataGUI_set_on_change_cb(obj_fizzy_text, "noiseStrength", scr_ft_onchange_update_flow_field);

// Create a second folder named 'Letters'
var folder_letters = scr_cbDataGUI_add_folder("Letters");

// Put the following 3 rows in the 'Letters' folder by passing it as last argument
scr_cbDataGUI_add(obj_fizzy_text, "growthSpeed", cbData_type.number, folder_letters);
scr_cbDataGUI_set_range(obj_fizzy_text, "growthSpeed", -5, 5);

scr_cbDataGUI_add(obj_fizzy_text, "maxSize", cbData_type.number, folder_letters);
scr_cbDataGUI_set_range(obj_fizzy_text, "maxSize", 5, 20);

scr_cbDataGUI_add(obj_fizzy_text, "message", cbData_type.text, folder_letters);
scr_cbDataGUI_set_on_change_cb(obj_fizzy_text, "message", scr_ft_onchange_set_message);

// Collapse the folder on the GUI by setting open_folder to 'false'
scr_cbDataGUI_open_folder(folder_flow, false);