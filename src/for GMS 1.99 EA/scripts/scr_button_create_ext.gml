/// scr_button_create_ext(x, y, width, height, font, blend_color, label_str);
/**
 * @brief  Creates a button at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {number} width Width in pixels
 * @param  {number} height Height in pixels
 * @param  {font_asset} font Font for the button
 * @param  {number} blend_color Color for tinting the button. 
 *                              Use c_white if you don't need tinting.
 * @param  {string} label_str Visible text on the button.
 *
 * @return {textbox_instance} Returns the button object instance.
 *
 * @see scr_button_create
 */


var o = instance_create(argument[0], argument[1], obj_cbGUI_button);
scr_button_set_sizes(o, argument[2], argument[3]);
scr_button_set_font(o, argument[4]);
o.blend_color = argument[5];
scr_button_set_label(o, argument[6]);
return o;
