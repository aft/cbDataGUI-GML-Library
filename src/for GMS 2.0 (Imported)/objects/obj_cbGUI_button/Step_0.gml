/// @description  step
if (disabled) exit; // skip if disabled
if (!visible) exit;
//if (!_onFocus && mouse_check_button(mb_left)) exit;

event_inherited();

_scr_button_step_mouse();


