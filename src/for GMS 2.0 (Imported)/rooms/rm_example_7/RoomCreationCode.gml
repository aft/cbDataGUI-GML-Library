with obj_fizzy_text scr_ft_set_message("Alert");

scr_cbDataGUI_add(obj_fizzy_text, "pSpeed", cbData_type.number, -1);
scr_cbDataGUI_set_range(obj_fizzy_text, "pSpeed", -2.5, 2.5);
scr_cbDataGUI_add(obj_fizzy_text, "color4", cbData_type.color, -1);


// Attaches an alert script to the slider for on_Release event
scr_cbDataGUI_set_on_release_cb(obj_fizzy_text, "pSpeed", scr_alert_demo);

// Attaches an alert script to the color picker for on_Release event
scr_cbDataGUI_set_on_release_cb(obj_fizzy_text, "color4", scr_alert_demo);