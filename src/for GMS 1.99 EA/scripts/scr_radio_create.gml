/// scr_radio_create(x, y, group_no, name_value, [optional:label_str]);
/**
 * @brief  Creates a radiobox at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
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
 * @see scr_radiobox_create_ext
 */

var o = instance_create(argument[0], argument[1], obj_cbGUI_radio);
o.group = real(argument[2]);
o.name  = argument[3]; // can be a string, number or boolean..
if (argument_count == 5) o.label = argument[4];
else o.label = undefined;
return o;
