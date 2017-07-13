/// @description _scr_slider_setperc(double);
/// @function _scr_slider_setperc
/// @param double

_perc = clamp(argument0, 0, 1);
_scr_slider_setvalue(minLimit + (maxLimit-minLimit)*_perc);
_scr_slider_getcursorpos();
