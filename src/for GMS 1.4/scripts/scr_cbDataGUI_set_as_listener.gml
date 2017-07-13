/// scr_cbDataGUI_set_as_listener(target_object, target_variable);
/**
* @brief  Sets the UI object as listener. Listener objects tracks and
*         shows the target object variable value. These UI elements
*         cannot be interacted by the user. They are read-only elements.
*
* @param  {instance} target_obj           An object instance to be targeted
* @param  {string}   target_variable_str  An instance variable name as a string. 
*                                         (Eg. For obj.radius, use "radius")
*
* @return {boolean} Returns undefined if instance can't be found. 
*                   Returns false if responsible row cannot be found 
*                   Returns true if successful
*
*/

var comp = noone;
var ret = false;

o_count = instance_number(obj_cbDataGUI_component);
if (o_count <= 0) return undefined;

for (var i=0; i < o_count; i++) {
    var o = instance_find(obj_cbDataGUI_component, i);
    if (o._type != cbData_type.folder && o._target == argument0 && o._targetVariable == argument1) {
        // component found
        comp = o;
    }
}

if (comp == noone) return undefined;

with (comp) {
    if (!is_undefined(_multiple)) {
        show_debug_message("Multiple choice items cannot be set as listener.");
        return ret;
    }
    var t_obj = _target;
    var t_var = _targetVariable;
    
    // Set in the component object    
    _listen = _target;
    _listenVariable = _targetVariable;
    _target = noone;
    _targetVariable = undefined;

    // Set in the cbGUI object    
    switch (_type) {
        case cbData_type.number:
            _component[@0]._listen = t_obj;
            _component[@0]._listenVariable = t_var;
            _component[@0]._target = noone;
            _component[@0]._targetVariable = undefined;
            ret = true;
            break;
        case cbData_type.text:
        case cbData_type.boolean:
        case cbData_type.color:
            _component._listen = t_obj;
            _component._listenVariable = t_var;
            _component._target = noone;
            _component._targetVariable = undefined;
            ret = true;
            break;
    }
    return ret;
}

