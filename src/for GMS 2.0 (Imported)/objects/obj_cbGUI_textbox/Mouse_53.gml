/// @description unfocus all textboxes in the room
_onFocus = false;

if (disabled) exit;
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

if (position_meeting(_nx, _ny, self) && !disabled && !_onFocus) {
    if (scr_cbGUI_mouse(true)) {
        _scr_cbGUI_setactive();
        // start blinking cursor
        _scr_textbox_setblink();
    }
}

_scr_textbox_invalidatesurface();

