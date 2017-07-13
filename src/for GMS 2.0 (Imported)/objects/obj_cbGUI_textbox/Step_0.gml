/// @description  step

if (disabled) exit; // skip if disabled
if (!visible) exit;
event_inherited();

_scr_textbox_step_mouse();
_scr_textbox_step_ctrl();

_scr_cbGUI_remote_handler();
_scr_cbGUI_onChange_cb_handler();
_scr_cbGUI_onSubmit_cb_handler();


