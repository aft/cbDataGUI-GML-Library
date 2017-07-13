if (_presetObj == noone && _usePresets) {
    // create preset object and set _presetObj
    var obj = instance_create(x, y, obj_cbDataGUI_preset);
    _presetObj = obj;
    _presetH = obj._bodyH;

} else if (_presetObj != noone && !_usePresets) {
    // destroy object
    if (instance_exists(_presetObj)) {
        // Using 'with' for 1.4 compatibility
        with (_presetObj) instance_destroy();
    }
    _presetObj = noone;
    _presetH = 0;

} 

// for gui mouse x & y
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

// middle button down
if (position_meeting(_nx, _ny, self) && mouse_check_button(mb_middle) && !_isDragging) {
    _xOffset = _nx - x;
    _yOffset = _ny - y;
    _isDragging = true;
}
// middle button down
if (mouse_check_button(mb_middle) && _isDragging) {
    x = _nx - _xOffset;
    y = _ny - _yOffset;
    window_set_cursor(cr_size_all);
}

if (_isDragging && mouse_check_button_released(mb_middle)) {
    _isDragging = false;
    window_set_cursor(cr_default);
}


