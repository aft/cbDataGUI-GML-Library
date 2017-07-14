/// scr_textbox_create(x, y, [optional:initial_value]);
/**
 * @brief  Creates a textbox at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {string} [initial_value] value of the textbox
 *
 * @return {textbox_instance} Returns the textbox object instance.
 *
 * @see scr_textbox_create_ext
 */
 
var o = instance_create(argument[0], argument[1], obj_cbGUI_textbox);
if (argument_count == 3) scr_textbox_set_value(o, argument[2]);
return o;
