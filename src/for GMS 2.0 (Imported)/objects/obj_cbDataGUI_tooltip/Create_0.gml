/**
* <p>Tooltip is an optional feature of cbDataGUI.</p>

* <p>To add a tooltip to a component, use scr_cbDataGUI_set_tooltip()
* script.</p>

*/

_variable = "";
_object = "";
_component = noone;
_description = "";
alpha = 0;
_mouseOver = false;

rotation = 0;
_padding = 12;
_bodyW = 200;
_descY = 40;
_lineHeight = 12;
_px = 0;
_py = 0;
_pd = 0;
_pax = _bodyW - 4; // popup arrow x
_pay = 15; // popup arrow y
_fading = false;
_gw = display_get_gui_width(); // cache for perf

sprite_tooltip = spr_cbDataGUI_tooltip;
sprite_tooltip_seperator = spr_cbDataGUI_tooltip_seperator;
sprite_tooltip_arrow = spr_cbDataGUI_tooltip_arrow;
sprite_tooltip_icon = spr_cbDataGUI_tooltip_icon;

font = cbDataGUIFont;
font_title = cbDataGUIFontBold;



image_speed = 0;

alarm[1] = 1; // run alarm1 to calc popup position

/* */
/*  */
