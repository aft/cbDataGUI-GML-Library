/// scr_colorpicker_create_ext(x, y, width, height, font, blend_color, border_px, show_info_bool, auto_copy_to_clipboard, [optional:inital_value]);
/**
 * @brief  Creates a color picker at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {number} width Width in pixels
 * @param  {number} height Height in pixels
 * @param  {font_asset} font Font for the textbox
 * @param  {number} blend_color Color for tinting the color picker. 
 *                              Use c_white if you don't need tinting.
 * @param  {number} border_px Border in pixels
 * @param  {boolean} show_info_bool Hide or show color name on the colorpicker button. Use false to hide.
 * @param  {boolean} auto_copy_to_clipboard Enable or disable auto-copying the color to clipboard on change.
 * @param  {color} [initial_color] Optional: Value of the color picker
 *
 * @return {colorpicker_instance} Returns the color picker object instance.
 *
 * @see scr_colorpicker_create
 */


var o = instance_create(argument[0], argument[1], obj_cbGUI_colorpicker);
scr_colorpicker_set_sizes(o, argument[2], argument[3], argument[6]);
scr_colorpicker_set_font(o, argument[4]);
o.blend_color = argument[5];
scr_colorpicker_show_info(o, argument[7]);
scr_colorpicker_auto_copy_to_clipboard(o, argument[8]);
if (argument_count == 10) scr_colorpicker_set_value(o, argument[9]);
return o;
