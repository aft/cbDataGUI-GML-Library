/// scr_slider_create_ext(x, y, width, height, blend_color, min_value, max_value, [optional:inital_value]);
/**
 * @brief  Creates a slider at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {number} width Width in pixels
 * @param  {number} height Height in pixels
 * @param  {number} blend_color Color for tinting the slider. 
 *                              Use c_white if you don't need tinting.
 * @param  {number} [initial_value] Optional: Value of the slider
 *
 * @return {slider_instance} Returns the slider object instance.
 *
 * @see scr_slider_create
 */


var o = instance_create(argument[0], argument[1], obj_cbGUI_slider);
scr_slider_set_sizes(o, argument[2], argument[3]);
o.blend_color = argument[4];
scr_slider_set_range(o, argument[5], argument[6]);
if (argument_count == 8) scr_slider_set_value(o, argument[7]);
return o;
