/**
* <p>Presets are optional feature to save cbDataGUI component values.</p>
 
* <p>If presets are enabled, users can create presets to save component
* values. These values are stored on the user's disk persistently,
* unless they are deleted by the user.</p>

* <p>Users also can export the values as a JSON string.</p>

* <p>If the application detects that there is a preset file on the disk,
* it will be auto-loaded during the launch of the application. This
* feature can be turned off or on.</p>
*
*/


_c = obj_cbDataGUI_controller;
_bodyW = _c._bodyW;
_bodyH = 56; //px
_leftPadding = 8;
_topPadding = 6;
_saveToFile = false;
_saveDirectory = "test\\"; // needs to start with a char and end with backslash
_jsonFileName = "presets.json";
_file = -1;

image_speed = 0;

// dropdown instance
_dropdown = instance_create(_c.x + _leftPadding, _c.y + 24 , obj_cbGUI_dropdown);
_dropdown.depth = _c.depth - 10;
_dropdown.sprite_index = spr_cbDataGUI_dropdown;
_dropdown.sprite_icon  = spr_cbDataGUI_dropdown_ico;
_dropdown._popupOffset = 0;
_dropdown._leftPadding = 5;
scr_dropdown_set_sizes(_dropdown, 142, 20);
scr_dropdown_set_font(_dropdown, _c.font, _c.font);
_dropdown.onChangeCallbackScript = _scr_cbDataGUI_preset_dropdown_change;
//_dropdown._oCargs =

// imagebutton NEW
_btn_new = instance_create(_c.x + 154, _c.y + 27, obj_cbGUI_imagebutton);
_btn_new.sprite_index = spr_cbDataGUI_ib_new;
_btn_new.depth = _c.depth - 2;
_btn_new.onMouseUpCallbackScript = scr_cbDataGUI_add_preset;

// imagebutton SAVE
_btn_save = instance_create(_c.x + 170, _c.y + 27, obj_cbGUI_imagebutton);
_btn_save.sprite_index = spr_cbDataGUI_ib_save;
_btn_save.depth = _c.depth - 2;
_btn_save.onMouseUpCallbackScript = scr_cbDataGUI_save_preset;

// imagebutton REVERT
_btn_revert = instance_create(_c.x + 187, _c.y + 27, obj_cbGUI_imagebutton);
_btn_revert.sprite_index = spr_cbDataGUI_ib_revert;
_btn_revert.depth = _c.depth - 2;
_btn_revert.onMouseUpCallbackScript = scr_cbDataGUI_load_preset;

// imagebutton DEL
_btn_del = instance_create(_c.x + 203, _c.y + 27, obj_cbGUI_imagebutton);
_btn_del.sprite_index = spr_cbDataGUI_ib_del;
_btn_del.depth = _c.depth - 2;
_btn_del.onMouseUpCallbackScript = scr_cbDataGUI_delete_preset;

// imagebutton CODE
_btn_code = instance_create(_c.x + 222, _c.y + 27, obj_cbGUI_imagebutton);
_btn_code.sprite_index = spr_cbDataGUI_ib_code;
_btn_code.depth = _c.depth - 2;
_btn_code.onMouseUpCallbackScript = scr_cbDataGUI_get_preset_json;
var arr; arr[0] = true;
_btn_code._oMUpargs = arr;

scr_cbGUI_set_gui_size(_c.guiSize);

_objects[0] = _dropdown;
_objects[1] = _btn_new;
_objects[2] = _btn_save;
_objects[3] = _btn_revert;
_objects[4] = _btn_del;
_objects[5] = _btn_code;


/*
{
    "preset" : "abc",
    "presets" : [
        "abc" : {
            "var_str" : "lorem ipsum",
            "var_int" : 0.37
        }, 
        "cde" : {},
        "efg" : {}
    ]
    "structure" : [               // TODO
        "0" : {
            name: "var_str",
            type: 0,
            value: "",            // comp
            target: obj,          // comp
            targetVar: "string"   // comp
            items: [],            // folder
            open: true            // folder
        },
        "1" : {},
        "2" : {}
    ]
}

*/

_p = ds_map_create();
    ds_map_add(_p, "preset", "");
    _plist = ds_list_create();
    ds_map_add_list(_p, "presets", _plist);

_scr_cbDataGUI_loadpresetfile();


/* */
/*  */
