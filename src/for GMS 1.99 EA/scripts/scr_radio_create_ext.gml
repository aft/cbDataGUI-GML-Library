/// scr_radio_create_ext(x, y, blend_color, group_no, name_value, [optional:label_str]);
/**
 * @brief  Creates a radiobox at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {number} blend_color Color for tinting the checkbox. 
 *                              Use c_white if you don't need tinting.
 * @param  {number} group_no radioboxes are grouped by this number. only 
 *                           one item from the group can be selected at
 *                           a given time.
 * @param  {any} name_value This is the value that will be returned when 
 *                          the radiobox is selected. This can be any type
 *                          of a value.
 * @param  {string} [label_str] Optional: Label to describe the element
 *                              to the user.
 *
 * @return {radiobox_instance} Returns the radiobox object instance.
 *
 * @see scr_radiobox_create
 */


var o = instance_create(argument[0], argument[1], obj_cbGUI_radio);
o.blend_color = argument[2];
o.group = real(argument[3]);
o.name  = argument[4]; // can be a string, number or boolean..
if (argument_count == 6) scr_radio_set_label(o, argument[5]);
else scr_radio_set_label(o, undefined);
return o;

