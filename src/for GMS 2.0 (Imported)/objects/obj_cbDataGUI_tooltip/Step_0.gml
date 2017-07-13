if (!visible) exit;

// gui mouse
var gui_mouse_x = device_mouse_x_to_gui(0);
var gui_mouse_y = device_mouse_y_to_gui(0);

if ((rotation mod 360) != 0) {
    _nx = cos(degtorad(rotation)) * (gui_mouse_x - x) - sin(degtorad(rotation)) * (gui_mouse_y - y) + x;
    _ny = sin(degtorad(rotation)) * (gui_mouse_x - x) + cos(degtorad(rotation)) * (gui_mouse_y - y) + y;
} else {
    _nx = gui_mouse_x;
    _ny = gui_mouse_y;
}

// for depth tracking
scr_cbGUI_track_depth_step(_nx, _ny);

if (position_meeting(_nx, _ny, self) && !_mouseOver) {
    if (scr_cbGUI_mouse(true)) {
        _mouseOver = true;
        if (alarm_get(0) <= 0) alarm[0] = 5;
    }
}

if (!position_meeting(_nx, _ny, self) && _mouseOver) {
    _mouseOver = false;
    if (alarm_get(0) <= 0) alarm[0] = 5;
}


