/// @description _scr_textbox_getselectedtext();
/// @function _scr_textbox_getselectedtext
if (!_selected) return undefined;

return string_copy(_scr_text_unsanitize(value), 
                       min(_selection[0], _selection[1])+1, 
                       abs(_selection[1]- _selection[0]));
