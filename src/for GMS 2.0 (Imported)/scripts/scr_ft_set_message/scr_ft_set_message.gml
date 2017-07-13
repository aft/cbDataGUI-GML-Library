/// @description scr_ft_set_message(string);
/// @function scr_ft_set_message
/// @param string
draw_set_font(fizzyFont);
if (string_width(string_hash_to_newline(message)) != string_width(string_hash_to_newline(argument0))) scr_ft_destroy();

message = string(argument0);

width = string_width(string_hash_to_newline(message));
height = string_height(string_hash_to_newline(message));
xoffset = x - width / 2;
yoffset = y - height / 2;

scr_ft_create_mask();
scr_ft_create_flow_field();
