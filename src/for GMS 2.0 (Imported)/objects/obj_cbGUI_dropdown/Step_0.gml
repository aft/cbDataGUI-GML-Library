/// @description  step
if (disabled) exit; // skip if disabled
if (!visible) exit;
if (_skip) exit;
if (!mouse_check_button(mb_left)) _scrollingStarted = false;

event_inherited();

_scr_dropdown_step_mouse();

_scr_cbGUI_remote_handler();
_scr_cbGUI_onChange_cb_handler();



