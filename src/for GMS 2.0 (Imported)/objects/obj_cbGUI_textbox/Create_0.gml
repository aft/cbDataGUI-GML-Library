/**
* 
*/

event_inherited();

_type = 0;

_bodyW = 190;
_bodyH = 32;

_txtLen = 0;
_txtW = 0;
_txtH = 0; 
_visibleTxt = "";
_lo = 0; //left offset
_ro = 0; //right offset
_visibleCursorPos = 0;
_rawValue = "";
_cursorX = 0;

_selected = false;
_cursorPos = 0;
_showCursor = true;
_selectionStarted = false;
_selection[0] = 0; _selection[1] = 0;
shadowEnabled = false;                      /*< Variable description here. */
shadowOpacity = .5;
shadowColor = c_black;
shadowOffset = 1; //px
_changed = false;
_submitted = false;

c_text = make_color_rgb(40, 40, 40);
c_text_disabled = make_color_rgb(80, 80, 80);
c_cursor = make_color_rgb(151, 203, 255);
c_selection = make_color_rgb(151, 203, 255);
c_foutselection = make_color_rgb(203, 203, 203);
blinkSpeed = .25;
padding = 4; //px
indent = 2; //px
//if (os_browser != browser_not_a_browser) {

validateEveryChar = true;
allowedChars = " !\\#$%&*+,-./0123456789(){}[]:;<=>?@ABCÇDEFGHIJKLMNOÖPQRSTUÜVWXYZ_abcçdefghijklmnoöpqrstuüvwxyz";

// sprite properties
sprite_index = spr_cbGUI_textbox;

 
// get visible text area sizes
// everytime after the sprite changes
_scr_textbox_calcsizes();

// surface stuff
//_surface = -1;
//_surfaceW = power(2, _scr_getnearestpower(bbox_right-bbox_left, 2));
//_surfaceH = power(2, _scr_getnearestpower(bbox_bottom-bbox_top, 2));


onChangeCallbackScript = undefined;
onSubmitCallbackScript = undefined;
_oCargs = undefined;
_oSargs = undefined;

_scr_textbox_setblink();

// string_length("#")  //1
// string_length("\#") //2
// string_width("#")   //0px
// string_width("\#")  //10px with my fontface


/* */
/*  */
