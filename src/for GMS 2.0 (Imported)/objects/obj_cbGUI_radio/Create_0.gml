event_inherited();

_type = 3;

value = false;
group = 0;
name  = undefined;
label = undefined;

disabled = false;
_onFocus = false;
_changed = false;

// sprite properties
sprite_index = spr_cbGUI_radio;
pressed_sprite_index = spr_cbGUI_radio_checked;
tick_sprite_index = spr_cbGUI_radio_tick;

// colors
c_text          = make_color_rgb(40, 40, 40);
c_text_disabled = make_color_rgb(80, 80, 80);
c_focused       = make_color_rgb(0, 144, 255);

_scr_radio_calcsizes();

// Inherited stuff
// font = cbGUIFont;
// halign = fa_left;
// valign = fa_middle;

onChangeCallbackScript = undefined;
_oCargs = undefined;


