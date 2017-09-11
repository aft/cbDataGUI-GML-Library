/// scr_cbDataGUI_set_gui_position(x, y);
/**
* @brief  Moves the cbDataGUI panel to the given location.
* @return {boolean} Returns true if successful. Returns undefined if fails.
*/

var c = instance_find(obj_cbDataGUI_controller, 0);
if (!instance_exists(c)) return undefined;

// TODO: Check this with gui size change. May need fixing.
c.x = argument0;
c.y = argument1;   

return true;

