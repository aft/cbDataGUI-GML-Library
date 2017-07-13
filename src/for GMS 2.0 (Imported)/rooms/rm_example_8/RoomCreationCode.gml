// Listen Feature

// Add a slider for the radius value
scr_cbDataGUI_add(oTestSin, "radius", cbData_type.number, -1);
scr_cbDataGUI_set_range(oTestSin, "radius", 0, 100);

// Convert slider into a listener
scr_cbDataGUI_set_as_listener(oTestSin, "radius");