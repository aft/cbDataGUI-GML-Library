/// scr_checkbox_create_ext(x, y, blend_color, [optional:inital_value]);
/**
 * @brief  Creates a checkbox at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {number} width Width in pixels
 * @param  {number} height Height in pixels
 * @param  {number} blend_color Color for tinting the checkbox. 
 *                              Use c_white if you don't need tinting.
 * @param  {number} [initial_value] Optional: Value of the checkbox
 *
 * @return {checkbox_instance} Returns the checkbox object instance.
 *
 * @see scr_checkbox_create
 */


var o = instance_create(argument[0], argument[1], obj_cbGUI_checkbox);
o.blend_color = argument[2];
if (argument_count == 4) scr_checkbox_set_value(o, argument[3]);
return o;
