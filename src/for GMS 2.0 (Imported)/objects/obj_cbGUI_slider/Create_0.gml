event_inherited();

_type = 1;

value = undefined;
minLimit = undefined;
maxLimit = undefined;
previousValue = undefined;
_stepValue = undefined;
_perc = 0;
_cursorX = 0;

disabled = false;
_onFocus = false;
_changed = false;
_released = false;
_dragging = false;

c_indicator = make_color_rgb(151, 203, 255);
c_foutIndicator = make_color_rgb(120, 120, 120);
c_disabledIndicator = make_color_rgb(80, 80, 80);

// sprite properties
sprite_index     = spr_cbGUI_slider;
sprite_indicator = spr_cbGUI_slider_i;
sprite_button    = spr_cbGUI_slider_btn;
showButton = true;

//scale of the slider and indicator
hPadding = 1;
vPadding = 1;

_sliderW = 220;
_sliderH = sprite_height;

_scr_slider_calcsizes();
// scale ends

onChangeCallbackScript  = undefined;
onChangeCallbackScript2 = undefined;
onReleaseCallbackScript = undefined;
_oCargs  = undefined;
_oCargs2 = undefined;
_oRargs  = undefined;

_scr_slider_setvalue(irandom_range(0, 100));
_scr_slider_setrange(0, 100);


