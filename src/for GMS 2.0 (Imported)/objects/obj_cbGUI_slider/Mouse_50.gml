/// @description unfocus all sliders in the room
// unless dragging is started
if (!_dragging) _onFocus = false;

if (disabled) exit;
if (!visible) exit;

if (position_meeting(_nx, _ny, self) && !_onFocus) {
    if (scr_cbGUI_mouse(mouse_check_button_pressed(mb_left))) {
        _scr_cbGUI_setactive();
        _dragging = true;
    }
}


