/// scr_imagebutton_create_ext(x, y, blend_color, sprite);
/**
 * @brief  Creates an image button at the given position. 
 *
 * @param  {number} x X coordinate
 * @param  {number} y Y coordinate
 * @param  {number} blend_color Color for tinting the button. 
 *                              Use c_white if you don't need tinting.
 * @param  {sprite_asset} sprite Image that will work as a button
 *
 * @return {imagebutton_instance} Returns the button object instance.
 *
 * @see scr_imagebutton_create
 */


var o = instance_create(argument[0], argument[1], obj_cbGUI_imagebutton);
o.blend_color = argument[2];
o.sprite_index = argument[3]
return o;
