/**
* <p>This object is created automatically when there is an cbDataGUI 
* component is added. You don't need to do anything.</p>
 
* <p>You can ONLY have one controller object in a room. This means
* you can only have one cbDataGUI in a room.</p>

* <p>If you would like to create the instance of this object manually,
* drag and drop it to the room editor or use scr_cbDataGUI_create().</p>

* <p>The location of the object does not matter. It is always created
* on the right side of the display by default. It can be moved
* by the user clicking the middle button on it.</p>
*
*/

_component_array[0] = undefined;
rotation = 0;

_bodyW = 245;
_bodyH = 0;
_rowH = 28;
_padding = 4;
_folderIndent = 5;
_buttonH = 28;
_colorW = 3;
_labelW = 84;
_rowCount = -1;
_xOffset = 0;
_yOffset = 0;
_isOpen = true;
_isDragging = false;

_usePresets = false;
_presetObj = noone;
_presetH = 0;

font = cbDataGUIFont;


guiSize = 1;
x = (display_get_gui_width()/guiSize - _bodyW);
y = 0;

image_speed = 0;

_debug = false;

_flat = ds_map_create(); // internal tmp


/* */
/*  */
