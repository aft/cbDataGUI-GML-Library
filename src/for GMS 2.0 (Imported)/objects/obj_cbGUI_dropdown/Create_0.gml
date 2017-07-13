event_inherited();

_type = 6;

keys = undefined;           // raw key array or ds_map
value = undefined;          // value get when an item on popup is chosen
_visibleKeys = undefined;   // item names shown on the popup
_visibleKeyOnDropdown = undefined;  /* !!! item name shown on the dropdown button itself */
_lineNo = undefined;
_minLineNo = 0;
_maxLineNo = 5;
_scrollBar = false;
_lineOffset = 0; // needed for scrollbar
_scrollingStarted = false;
_scrollingStartY = undefined;
_skipScroll = false;

disabled = false;
_onFocus = false;
_open = false;
_hover = -1;
_skip = false;
_changed = false;

fontBody = cbGUIFont;
fontPopup = cbGUIFont;
halign = fa_left;
valign = fa_middle;

// light blue: make_color_rgb(151, 203, 255);
c_text = make_color_rgb(90, 90, 90);
c_fText = make_color_rgb(80, 80, 80);
c_disabledText = make_color_rgb(120, 120, 120);
c_text_popup_normal = make_color_rgb(80, 80, 80);
c_text_popup_hover = make_colour_rgb(255, 255, 255);
c_popup_hover = make_color_rgb(151, 203, 255);
c_scrollbar_bg = make_color_rgb(120, 120, 120);
c_scrollbar = make_color_rgb(10, 10, 10);

_leftPadding  = 10;  // px
_rightPadding = 10;  // px
_vOffset = -2; // px text offset to center text vertically

// sprite properties
sprite_index = spr_cbGUI_dropdown;          // 3slices
sprite_icon = spr_cbGUI_dropdown_ico; 
sprite_popup = spr_cbGUI_dropdown_pop;      // 9slices
sprite_seperator = spr_cbGUI_dropdown_sep;  // 3slices

// scale
_bodyW = 220;
_bodyH = 24;

_popupLH = 25;  //px lineheight in the popup
_popupOffset = -4;  // px. vertical distance between dropdown and popup
_popupTopPadding = 4;
_popupBottomPadding = 4;
_popupX1 = 0;
_popupY1 = 0;
_popupX2 = 0;
_popupY2 = 0;

_scrollBarH = 0;
_scrollBarW = 10;
_scrollBarRightPadding = 1;
_scrollBarTopPadding = 1;
_scrollBarBottomPadding = 3;
_sbX1 = 0;
_sbX2 = 0;
_sbY1 = 0;
_sbY2 = 0;

_iconX = 0;
_iconY = 0;
_iconRightPadding = 1;
_iconTopPadding = 1;
_popupTextX = 0;
_popupTextW = 0;
_bodyTextW = 0;

_scr_dropdown_calcsizes();
_scr_dropdown_setpopup();
// scale ends

onChangeCallbackScript = undefined;
_oCargs = undefined;

/*
// array
var k;
k[@ 0] = "constrain";
k[@ 1] = "pizza";
k[@ 2] = "chrome";
k[@ 3] = "tomato";
k[@ 4] = "raspberry";
k[@ 5] = "machine learning";
k[@ 6] = "something very very long";
k[@ 7] = "1constrain";
k[@ 8] = "2pizza";
k[@ 9] = "3chrome";
k[@ 10] = "4tomato";
k[@ 11] = "5raspberry";
k[@ 12] = "6machine learning";
k[@ 13] = "7something very very long";
_scr_dropdown_setkeys(k);
*/

// ds_list
/*
var k;
k = ds_list_create();
k[| 0] = "constrain";
k[| 1] = "pizza";
k[| 2] = "chrome";
k[| 3] = "tomato";
k[| 4] = "raspberry";
k[| 5] = "machine learning";
k[| 6] = "something very very long";
_scr_dropdown_setkeys(k);
*/

/*
// ds_map
var k;
k = ds_map_create();
k[? "constrain"] = 111111;
k[? "pizza"] = 222222;
_scr_dropdown_setkeys(k);
*/

/* */
/*  */
