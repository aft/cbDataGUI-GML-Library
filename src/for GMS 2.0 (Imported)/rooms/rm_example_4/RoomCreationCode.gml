with obj_fizzy_text {
    scr_ft_set_message("Colors");
    color1 = make_colour_rgb(0,211,225);
    color2 = make_colour_rgb(255,255,225);
    color3 = make_colour_rgb(255,240,0);
    color4 = make_colour_rgb(0,0,0);
}

// Add color pickers for the particle colors
scr_cbDataGUI_add(obj_fizzy_text, "color1", cbData_type.color, -1);
scr_cbDataGUI_add(obj_fizzy_text, "color2", cbData_type.color, -1);
scr_cbDataGUI_add(obj_fizzy_text, "color3", cbData_type.color, -1);
scr_cbDataGUI_add(obj_fizzy_text, "color4", cbData_type.color, -1);