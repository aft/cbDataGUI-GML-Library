/// scr_checkbox_create(x, y, [optional:initial_value]);
/**
 * @brief  Creates a checkbox at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {string} [initial_value] value of the checkbox
 *
 * @return {checkbox_instance} Returns the checkbox object instance.
 *
 * @see scr_checkbox_create_ext
 */

var o = instance_create(argument[0], argument[1], obj_cbGUI_checkbox);
if (argument_count == 3) scr_checkbox_set_value(o, argument[2]);
return o;
