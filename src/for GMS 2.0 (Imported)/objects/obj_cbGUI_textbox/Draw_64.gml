// image 0 - normal
// image 1 - focus
// image 2 - disabled

if (_onFocus) image_index = 1;
else if (disabled) image_index = 2
else image_index = 0;


d3d_transform_set_identity();
d3d_transform_set_rotation_z(rotation);
d3d_transform_add_translation(x, y, 0);

//if (!surface_exists(_surface)) {
//    _surface = surface_create(_surfaceW, _surfaceH);
//    surface_set_target(_surface);
//    draw_clear_alpha(c_yellow, 0.1);
    
    // draw textbox
    var sw = sprite_get_width(sprite_index)/3;
    draw_sprite_part_ext(sprite_index, image_index, 0,   0,  sw, sprite_height,  0,          0, 1,  1, c_white, alpha);
    draw_sprite_part_ext(sprite_index, image_index, sw,  0,  sw, sprite_height, sw,          0, (_bodyW-2*sw)/sw, 1, c_white, alpha);
    draw_sprite_part_ext(sprite_index, image_index, sw*2,0,  sw, sprite_height, _bodyW-sw, 0, 1,  1, c_white, alpha);

    // draw _selection box
    if (_selected) {
        var c;
        if (_onFocus) c = c_selection;
        else c = c_foutselection;
        draw_set_colour(c);
        var sx1 = _scr_textbox_textwidth(_selection[0]-_lo),
            sx2 = _scr_textbox_textwidth(_selection[1]-_lo);
        draw_rectangle( padding+indent+sx1, padding, 
                        padding+indent+sx2, _textH*2-padding-2, false);
    }
    
    // draw text
    draw_set_font(font);
    draw_set_halign(halign);
    draw_set_valign(valign);
    if (shadowEnabled) {
        draw_set_alpha(shadowOpacity);
        draw_set_colour(shadowColor);
        draw_text(padding+indent+shadowOffset, _textH+shadowOffset, string_hash_to_newline(_visibleTxt));
    }
    draw_set_alpha(1);
    if (disabled) draw_set_colour(c_text_disabled);
    else draw_set_colour(c_text);
    draw_text(padding+indent, _textH, string_hash_to_newline(_visibleTxt));
    
//    surface_reset_target();
//}

// draw surface
//draw_surface_ext(_surface, 0, 0, xScale, yScale, 0, c_white, alpha);

// draw cursor
if (_showCursor && _onFocus && !_selected) {
    draw_set_alpha(1);
    draw_set_colour(c_cursor);
    draw_rectangle( _cursorX+padding+indent, padding, 
                    _cursorX+padding+indent, _textH*2-padding-2, false);
}

d3d_transform_set_identity();


