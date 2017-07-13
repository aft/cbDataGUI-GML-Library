draw_set_alpha(1);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (_isOpen) {
    // close button
    draw_set_color(global._cbColors[_cbDataGUIColor.row]);
    draw_rectangle(x, y + _bodyH - _rowH, x + _bodyW, y + _bodyH - 6, false);
    
    draw_set_color(global._cbColors[_cbDataGUIColor.label]);
    draw_text(x + _bodyW / 2, y + _bodyH - _rowH / 2 - 3, string_hash_to_newline("Hide Controls"));

} else {
    // close button
    draw_set_color(global._cbColors[_cbDataGUIColor.row]);
    draw_rectangle(x, y, x + _bodyW, y + _rowH - 6, false);
    
    draw_set_color(global._cbColors[_cbDataGUIColor.label]);
    draw_text(x + _bodyW / 2, y + _rowH / 2 - 3, string_hash_to_newline("Show Controls"));
}


/*
// bounding box
draw_set_alpha(.4);
draw_set_colour(c_white);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
*/




/* */
/*  */
