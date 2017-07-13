// ICON
if (_mouseOver) draw_set_alpha(1);
else draw_set_alpha(.5);
draw_sprite(sprite_tooltip_icon, 0, x, y);

// POPUP
if (alpha != 0) {
    
    d3d_transform_set_identity();
    d3d_transform_set_rotation_z(rotation);
    d3d_transform_add_translation(_px, _py, 0);
    
        draw_set_alpha(alpha);
        
        // tooltip body
        var hh = string_height_ext(string_hash_to_newline(_description), _lineHeight, _bodyW - _padding*2);
        scr_draw_9slices_ext(sprite_tooltip, 0, 0, 0, _bodyW, _descY + hh + _padding, c_white, alpha);
        
        // tooltip title
        draw_set_font(font_title);
        draw_set_colour(global._cbColors[_cbDataGUIColor.button]);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_text(_padding, _padding-4, string_hash_to_newline(_variable)); 
    
        // seperator
        draw_sprite_part_ext(sprite_tooltip_seperator, 0, 0, 0,
                            _bodyW - _padding*2, 2, _padding, 31, 1, 1,
                            c_white, alpha);
        
        // description
        draw_set_font(font);
        draw_set_colour(global._cbColors[_cbDataGUIColor.button]);
        draw_text_ext(_padding, _descY, string_hash_to_newline(_description), _lineHeight, _bodyW - _padding*2); 
        
        // arrow
        draw_sprite_ext(sprite_tooltip_arrow, _pd, _pax, _pay, 1, 1, 0, c_white, alpha);
             
    d3d_transform_set_identity();

}


