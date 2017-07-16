/// scr_button_create(x, y, label_str);
/**
 * @brief  Creates a button at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {string} label_str Visible text on the button.
 *
 * @return {button_instance} Returns the button object instance.
 *
 * @see scr_button_create_ext
 */
 
var o = instance_create(argument[0], argument[1], obj_cbGUI_button);
o._useLabel = true;
scr_button_set_label(o, string(argument[2]));
return o;
