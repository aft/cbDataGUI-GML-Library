/// @description  step

if (disabled) exit; // skip if disabled
if (!visible) exit;
//if (!_onFocus && mouse_check_button(mb_left)) exit;

event_inherited();

_scr_slider_step_mouse();

_scr_cbGUI_remote_handler();
_scr_cbGUI_onChange_cb_handler_x2();
_scr_cbGUI_onRelease_cb_handler();




