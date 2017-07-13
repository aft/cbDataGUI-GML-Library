event_inherited();

_type = 7;

_open = false;
_dragging = false;
_huedragging = false;
_changed = false;
_released = false;
_showInfo = false;
_copyToClipboard = false;

_hue = 0;
_sat = 255;
_val = 255;

_surface = -1;

_cx = 0; // color x
_cy = 0; // color y
_hy = 0; // hue y

value = -1;
value_hex = -1;

_bodyW = 32;
_bodyH = 16;
_border = 1;

image_xscale = _bodyW;
image_yscale = _bodyH;

_yoffset = 0; // prevents popup to go out of the view
_popupH = 110;

c_normal = $CCCCCC;
c_focus  = $EFEFEF;
c_disabled = $AAAAAA;
c_popup_bg = $121212;
c_popup_color_border = $CCCCCC;
c_info_light = c_focus;
c_info_dark = c_popup_bg;

font = cbDataGUIFont;

sprite_index = spr_cbGUI_1x1;

onChangeCallbackScript = undefined;
onReleaseCallbackScript = undefined;
_oCargs = undefined;
_oRargs = undefined;

_scr_colorpicker_setvalue(make_color_hsv(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255)));


