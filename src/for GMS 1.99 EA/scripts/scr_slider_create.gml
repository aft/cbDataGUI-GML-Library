/// scr_slider_create(x, y, [optional:initial_value]);
/**
 * @brief  Creates a slider at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {string} [initial_value] value of the slider
 *
 * @return {slider_instance} Returns the slider object instance.
 *
 * @see scr_slider_create_ext
 */
 
var o = instance_create(argument[0], argument[1], obj_cbGUI_slider);
if (argument_count == 3) {
    scr_slider_set_range(o, -10*argument[2], 10*argument[2])
    scr_slider_set_value(o, argument[2]);
}
return o;
