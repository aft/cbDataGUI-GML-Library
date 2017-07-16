/// scr_dropdown_create(x, y, [optional:list_as_array_or_dsmap]);
/**
 * @brief  Creates a dropdown at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {array or dsmap} [list] Optional: Populate dropdown list with array or dsmap.
 *
 * @return {dropdown_instance} Returns the dropdown object instance.
 *
 * @see scr_dropdown_create_ext
 */
 
var o = instance_create(argument[0], argument[1], obj_cbGUI_dropdown);
if (argument_count == 3) scr_dropdown_set_list(o, argument[2]);
return o;
