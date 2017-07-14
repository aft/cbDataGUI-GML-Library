/// scr_textbox_create_ext(x, y, width, height, font, blend_color, [optional:inital_value]);
/**
 * @brief  Creates a textbox at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {number} width Width in pixels
 * @param  {number} height Height in pixels
 * @param  {font_asset} font Font for the textbox
 * @param  {number} blend_color Color for tinting the textbox. 
 *                              Use c_white if you don't need tinting.
 * @param  {string} [initial_value] Optional: Value of the textbox
 *
 * @return {textbox_instance} Returns the textbox object instance.
 *
 * @see scr_textbox_create
 */


var o = instance_create(argument[0], argument[1], obj_cbGUI_textbox);
scr_textbox_set_sizes(o, argument[2], argument[3]);
scr_textbox_set_font(o, argument[4]);
o.blend_color = argument[5];

if (argument_count == 7) {
    scr_textbox_set_value(o, argument[6]);
}

return o;
