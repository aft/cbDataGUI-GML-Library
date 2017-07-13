/// @description _scr_text_shorten(txt, font, maxwidth_px);
/// @function _scr_text_shorten
/// @param txt
/// @param  font
/// @param  maxwidth_px
// returns the text short or not
var txt = string(argument0); // make sure its a string
var font = argument1;
var w = argument2;

draw_set_font(font);
var tmp = txt;
if (string_width(string_hash_to_newline(tmp)) <= w) return tmp;

while ((string_width(string_hash_to_newline(tmp)) + string_width(string_hash_to_newline(".."))) > w) {
    tmp = string_delete(tmp, ceil(string_length(tmp)/2), 1);
    if (string_width(string_hash_to_newline(tmp)) + string_width(string_hash_to_newline("..")) < w) break;
}
tmp = string_insert("..", tmp, 1 + floor(string_length(tmp)/2));
return tmp;

