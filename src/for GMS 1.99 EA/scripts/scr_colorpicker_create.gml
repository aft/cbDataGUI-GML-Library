/// scr_colorpicker_create(x, y, [optional:initial_color]);
/**
 * @brief  Creates a color picker at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {number} [initial_color] initial color
 *
 * @return {colorpicker_instance} Returns the color picker object instance.
 *
 * @see scr_colorpicker_create_ext
 */
 
var o = instance_create(argument[0], argument[1], obj_cbGUI_colorpicker);
if (argument_count == 3) scr_colorpicker_set_value(o, argument[2]);
return o;
