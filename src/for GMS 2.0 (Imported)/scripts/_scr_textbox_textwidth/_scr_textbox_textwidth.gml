/// @description _scr_textbox_textwidth(cursorpos_int);
/// @function _scr_textbox_textwidth
/// @param cursorpos_int

var pos = argument0;
return string_width(string_hash_to_newline(string_copy(_visibleTxt, 1, pos)));

