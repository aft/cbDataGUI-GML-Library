/// @description mouse interactions
if (disabled) exit; // skip if disabled
if (!visible) exit;

event_inherited();

_scr_colorpicker_step_mouse();

_scr_cbGUI_remote_handler();

if (_changed) {
    // call onChange callback
    value = make_colour_hsv(_hue, _sat, _val);
    value_hex = color_to_hex(value);
    _scr_colorpicker_invalidatesurface();
    _scr_cbGUI_onChange_cb_handler();
}

if (_onFocus && _released) {
    // mouse button released
    // call onRelease callback
    if (_copyToClipboard) {
        clipboard_set_text(string(value));
        show_debug_message("Color is copied to clipboard");
    }
    _scr_cbGUI_onRelease_cb_handler();
}

