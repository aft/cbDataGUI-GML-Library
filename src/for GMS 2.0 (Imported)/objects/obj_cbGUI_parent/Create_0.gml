// for tab switching
if (id == instance_find(obj_cbGUI_parent, 0)) {
    global._cbGUI_component_controller = id;
    _tabbed = undefined;
    _list = undefined;
    global._cbGUI_depth_tracker = ds_list_create(); // for depth tracking
}

// for remote controlling
_target = noone;
_targetVariable = undefined;
_modifyTarget = false;

// for remote listening 
_listen = noone;
_listenVariable = undefined;

value = "";
disabled = false;
_onFocus = false;
_tabbable = true;

image_speed = 0;
image_angle = 0;

alpha = 1;
rotation = 0;

_nx = 0;
_ny = 0;

font = cbGUIFont;
halign = fa_left;
valign = fa_middle;

// set font for w and h calculations
draw_set_font(font);
draw_set_halign(halign);
draw_set_valign(valign);

guiSize = 1;
_appPos = application_get_position();

