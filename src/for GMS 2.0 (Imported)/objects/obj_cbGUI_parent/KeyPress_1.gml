if (id == instance_find(obj_cbGUI_parent, 0) && keyboard_lastkey == vk_tab) {
        
    _list = ds_list_create();
    with (all) {
        if (object_get_name(object_get_parent(object_index)) == "obj_cbGUI_parent") { // yuh
            if (!disabled && visible && _tabbable) {
                ds_list_insert(global._cbGUI_component_controller._list, 0, id); // to reverse the order
            }
        }
    }
    
    var next, found;
    if (global._cbGUI_component_controller._tabbed == undefined) { 
        found = ds_list_find_value(global._cbGUI_component_controller._list, 0);
    } else {
        next = ds_list_find_index(global._cbGUI_component_controller._list, global._cbGUI_component_controller._tabbed) + 1;
        found = ds_list_find_value(global._cbGUI_component_controller._list, next);
    }
    if (!found) found = ds_list_find_value(global._cbGUI_component_controller._list, 0);
    
    if (!is_undefined(found)) {
        if (instance_exists(found)) {
            _tabbed = found.id;
            
            with (obj_cbGUI_parent) {
                _onFocus = false;
            }
            found._onFocus = true;
        }
    } // else: no object found to tab to.
    
    ds_list_destroy(global._cbGUI_component_controller._list);

}


