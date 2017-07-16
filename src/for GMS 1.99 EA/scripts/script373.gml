/// scr_textbox_create_ext(x, y, width, height, font, blend_color, list_as_array_or_dsmap, [optional:initial_value]);
/**
 * @brief  Creates a dropdown at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {number} width Width in pixels
 * @param  {number} height Height in pixels
 * @param  {font_asset} font Font for the dropdown
 * @param  {number} blend_color Color for tinting the dropdown. 
 *                              Use c_white if you don't need tinting.
 * @param  {array or dsmap} list Populate dropdown list with array or dsmap.
 * @param  {string} [initial_value] Optional: Value of the textbox
 *
 * @return {dropdown_instance} Returns the dropdown object instance.
 *
 * @see scr_dropdown_create
 */


var o = instance_create(argument[0], argument[1], obj_cbGUI_dropdown);
scr_dropdown_set_sizes(o, argument[2], argument[3]);
scr_dropdown_set_font(o, argument[4]);
o.blend_color = argument[5];
scr_dropdown_set_list(o, argument[6]);
if (argument_count == 8) scr_dropdown_set_value(o, argument[7]);
return o;
