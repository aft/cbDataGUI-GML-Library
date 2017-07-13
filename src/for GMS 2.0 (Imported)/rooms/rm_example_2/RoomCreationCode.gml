with obj_fizzy_text scr_ft_set_message("Constrain");

// Number example with step size
scr_cbDataGUI_add(obj_fizzy_text, "noiseStrength", cbData_type.number, -1);
scr_cbDataGUI_set_range(obj_fizzy_text, "noiseStrength", 1, 50);
// sets the increment/decrement step size
scr_cbDataGUI_set_step(obj_fizzy_text, "noiseStrength", 5); 
scr_cbDataGUI_set_on_change_cb(obj_fizzy_text, "noiseStrength", scr_ft_onchange_update_flow_field);

// Multiple Choice String Example Using Arrays
var names; // Create an array
names[0] = "Constrain"; names[1] = "Pizza"; names[2] = "Chrome"; 
// Pass it as the last argument
scr_cbDataGUI_add(obj_fizzy_text, "message", cbData_type.text, -1, names); 
scr_cbDataGUI_set_on_change_cb(obj_fizzy_text, "message", scr_ft_onchange_set_message);

// Multiple Choice Number Example Using Ds_Maps
var spd = ds_map_create(); // Create a ds_map
spd[?"Stopped"] = 0;
spd[?"Slow"]    = 0.1;
spd[?"Fast"]    = 2;
// Pass it as the last argument
scr_cbDataGUI_add(obj_fizzy_text, "pSpeed", cbData_type.number, -1, spd);