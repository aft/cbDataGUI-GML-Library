event_inherited();

_type = 4;

label = undefined;
_visibleLabel = undefined;

disabled = false;
_onFocus = false;
_mouseOver = false;
_mouseOut = true;
_pressed = false;

font = cbGUIFont;
halign = fa_center;
valign = fa_middle;

c_label = make_color_rgb(90, 90, 90);
c_fLabel = make_color_rgb(255, 255, 255);
c_pressed = make_color_rgb(255, 255, 255);
c_disabledLabel = make_color_rgb(150, 150, 150);

_useLabel = true;
_leftPadding  = 16;  // px
_rightPadding = 16;  // px
_vOffset = -2;

// sprite properties
sprite_index = spr_cbGUI_button_normal;

// scale
_buttonW = 220;
_buttonH = 24;

_scr_button_calcsizes();
_scr_button_getvisiblelabel();
// scale ends

onMouseOverCallbackScript = undefined;
onMouseOutCallbackScript = undefined;
onMouseDownCallbackScript = undefined;
onMouseUpCallbackScript = undefined;

_oMOverargs = undefined;
_oMOutargs = undefined;
_oMDownargs = undefined;
_oMUpargs = undefined;

_scr_button_setlabel("Lorem Ipsum");

/*
onMouseOverCallbackScript = scr_button_onmouseovertest;
onMouseOutCallbackScript = scr_button_onmouseouttest;
onMouseDownCallbackScript = scr_button_onmousedowntest;
onMouseUpCallbackScript = scr_button_onmouseuptest;
*/

/* */
/*  */
