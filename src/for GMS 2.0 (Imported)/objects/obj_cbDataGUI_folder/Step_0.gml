if (!visible) exit;

// gui mouse
var gui_mouse_x = device_mouse_x_to_gui(0);
var gui_mouse_y = device_mouse_y_to_gui(0);

// for depth tracking
scr_cbGUI_track_depth_step(gui_mouse_x, gui_mouse_y);

if (position_meeting(gui_mouse_x, gui_mouse_y, self)) {
    if (scr_cbGUI_mouse(mouse_check_button_pressed(mb_left))) {
        _isOpen = !_isOpen;
        for (var k=0; k < array_length_1d(_folderItems); k++) {
            _scr_cbDataGUI_makevisible(_folderItems[k], _isOpen);
        }
        _scr_cbDataGUI_processrows();
    }
}

