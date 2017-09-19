// script that runs when slider changes

var o = argument0;
var textval = scr_textbox_get_value(o);
if (textval != value) {
    scr_textbox_set_value(o, string_format(value, -1, 3));
    with (o) _changed = false; // prevent cb trigger
}
