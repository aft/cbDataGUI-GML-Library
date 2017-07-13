/// @description  Draw GUI Folder
if (!_c._isOpen) exit;

x = _c.x;
y = _c.y + (_c._rowH * _row) + _c._presetH;

// row bg
draw_set_alpha(1);
draw_set_color(global._cbColors[_cbDataGUIColor.row]);
draw_rectangle(x + _indent * _c._folderIndent, y, x + _c._bodyW, y + _c._rowH - 1, false);

// seperator
draw_set_color(global._cbColors[_cbDataGUIColor.seperator]);
draw_rectangle(x + _indent * _c._folderIndent, y + _c._rowH - 1, x + _c._bodyW, y + _c._rowH - 1, false);

var sprIndex = 0;
if (_isOpen) sprIndex = 1;

draw_sprite_ext(spr_cbDataGUI_folder_arrow, sprIndex, x + _indent * _c._folderIndent + _c._colorW *2, y + _c._rowH / 2 - sprite_get_height(spr_cbDataGUI_folder_arrow) / 2, 1, 1, 0, c_white, 1);
draw_set_color(global._cbColors[_cbDataGUIColor.label]);
draw_set_font(_c.font);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(x + _indent * _c._folderIndent + _c._colorW * 2  + _c._padding + sprite_get_width(spr_cbDataGUI_folder_arrow), y + _c._rowH / 2, string_hash_to_newline(_name));

/*
if (_c._debug) {
    draw_set_alpha(.5);
    draw_set_color(c_red);
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
}
*/

/* */
/*  */
