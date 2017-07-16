/// scr_imagebutton_create(x, y, sprite);
/**
 * @brief  Creates an image button at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {sprite_asset} sprite Image that will work as a button
 *
 * @return {imagebutton_instance} Returns the button object instance.
 *
 * @see scr_imagebutton_create_ext
 */
 
var o = instance_create(argument[0], argument[1], obj_cbGUI_imagebutton);
o.sprite_index = argument[2];
return o;
