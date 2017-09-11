/// scr_cbDataGUI_set_allowed_chars(target_object, target_variable, string);
/**
* @brief  Sets the allowed characters in a textbox. Use this only for
*         cbData_type.text rows.
*
* @param  {instance} target_obj          An object instance to be targeted
* @param  {string}   target_variable_str An instance variable name as a string. 
*                                        (Eg. If you want to change obj.radius, 
*                                        use "radius")
* @param  {string}   string    Allowed characters as string. Example: "+-.0123ABC"
*         
* @return {boolean}  Returns true. Returns undefined if fails.
*
* @see scr_cbDataGUI_get_allowed_chars
*/

var comp = noone;

var o_count = instance_number(obj_cbDataGUI_component)
if (o_count <= 0) return undefined;

for (var i=0; i < o_count; i++) {
    var o = instance_find(obj_cbDataGUI_component, i);
    if (o._type != cbData_type.folder && o._target == argument0 && o._targetVariable == argument1) {
        // component found
        comp = o;
    }
}

if (comp == noone) return undefined;
if (comp._type != cbData_type.text ) return undefined;
if (comp._type != cbData_type.text && comp._multiple != undefined) {
    return undefined;    
} 

return scr_textbox_set_allowed_chars(comp._component, string(argument2));
