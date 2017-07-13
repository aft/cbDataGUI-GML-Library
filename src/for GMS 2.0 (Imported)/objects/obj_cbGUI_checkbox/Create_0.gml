event_inherited();

_type = 2;

value = false;
label = undefined;

disabled = false;
_onFocus = false;
_changed = false;

// sprite properties
sprite_index = spr_cbGUI_checkbox;
pressed_sprite_index = spr_cbGUI_checkbox_checked;
tick_sprite_index = spr_cbGUI_checkbox_tick;

// colors
c_text          = make_color_rgb(40, 40, 40);
c_text_disabled = make_color_rgb(80, 80, 80);
c_focused       = make_color_rgb(0, 144, 255);

_scr_checkbox_calcsizes();

// Inherited stuff
// font = cbGUIFont;
// halign = fa_left;
// valign = fa_middle;

onChangeCallbackScript = undefined;
_oCargs = undefined;


