/**
 * <p>This is the object that creates textbox, slider, dropdown
 * etc. gui elements on the gui.</p>

 * Currently GUI elements are:
 * <ul><li>Textbox (for string), </li>
 * <li>Slider (for number)</li>
 * <li>Checkbox (for boolean)</li>
 * <li>Button (for executing a script)</li>
 * <li>Color picker (for color)</li>
 * <li>Folder (to organize the elements listed above)</li></ul>

 * <p>A component is added to the gui by using scr_cbDataGUI_add script.</p>

 * <p>Each component can have a tooltip optionally. To add a tooltip, 
 * use scr_cbDataGUI_set_tooltip() script.</p>

 * <p>Each component can have a callback script attached optinally. These
 * scripts are called when there is a value change. To attach a callback
 * script to a component, use scr_cbDataGUI_set_on_change_cb() script.</p>
 *
 */

_c = obj_cbDataGUI_controller;
_type = undefined;
_indent = 0;
_row = 0;
_name = "";
_topPadding = 4;

_tooltip = noone;
_target = noone;
_targetVariable = undefined;
_component = undefined; // cbGUI object
_multiple = undefined;
_maxTextW = 100;

image_xscale = _c._colorW + _c._padding + _c._labelW;
image_yscale = _c._rowH;

image_speed = 0;


/* */
/*  */
