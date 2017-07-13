/// @description _scr_colorpicker_setvalue(value);
/// @function _scr_colorpicker_setvalue
/// @param value

value = argument0;
value_hex = color_to_hex(value);

_hue = color_get_hue(value);
_sat = color_get_saturation(value);
_val = color_get_value(value);

_cx = _sat / 2.55;
_cy =  (255 - _val) / 2.55;
_hy = 100 - _hue / 2.55;

_scr_colorpicker_invalidatesurface();

return value;
