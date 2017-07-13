with obj_fizzy_text scr_ft_set_message("cbDataGUI");

// String example
// Add a textbox row
scr_cbDataGUI_add(obj_fizzy_text, "message", cbData_type.text, -1);
// sets a callback script to run on value change
scr_cbDataGUI_set_on_change_cb(obj_fizzy_text, "message", scr_ft_onchange_set_message);


// Number example
// Add a slider row
scr_cbDataGUI_add(obj_fizzy_text, "pSpeed", cbData_type.number, -1); 
// sets the minimum and maximum values for the slider.
scr_cbDataGUI_set_range(obj_fizzy_text, "pSpeed", -2.5, 2.5); 

// Boolean example
// Add a checkbox row
scr_cbDataGUI_add(obj_fizzy_text, "displayOutline", cbData_type.boolean, -1); 

// Script example
// Add a button
scr_cbDataGUI_add(obj_fizzy_text, "scr_fizzy_text_explode", cbData_type.function, -1);