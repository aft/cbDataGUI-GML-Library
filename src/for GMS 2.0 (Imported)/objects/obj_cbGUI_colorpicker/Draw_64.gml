var borderColor;

if (_onFocus) {
    borderColor = c_focus;
} else if (disabled) {
    borderColor = c_disabled;
} else {
    borderColor = c_normal;
}

d3d_transform_set_identity();
d3d_transform_set_rotation_z(rotation);
d3d_transform_add_translation(x, y, 0);
   
    // draw color box
    draw_set_alpha(alpha);
    draw_set_color(borderColor);
    draw_rectangle(0, 0, _bodyW, _bodyH, true);
    
    draw_set_color(value);
    draw_rectangle(_border, _border, _bodyW-_border, _bodyH-_border, false);
    
    if (_showInfo) {
        if (_val < 138) draw_set_color(c_info_light);
        else draw_set_color(c_info_dark);
        
        draw_set_font(font);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_text(_bodyW / 2, _bodyH / 2, string_hash_to_newline("\\#" + string(value_hex)));
    }
    
d3d_transform_set_identity();

// draw popup
if (!_open) exit;

if (!surface_exists(_surface)) {
    _surface = surface_create(128, 128);
    surface_set_target(_surface);
        
        draw_set_alpha(alpha);
        draw_set_color(c_popup_bg);
        
        // bg
        draw_rectangle(0, 0, 128, _popupH, false);
        
        // outline
        draw_set_color(c_popup_color_border);
        draw_rectangle(4, 4, 105, 105, true);
        draw_rectangle(107, 4, 123, 105, true);    
    
        // values
        for (var i = 0; i < 100; i++) { // x / saturation
            for (var j = 0; j < 100; j++) { // y / value (brightness)
                draw_point_colour(5+i, 5+j, make_colour_hsv(_hue, 2.55*i, 255-2.55*j));
            }
        }
        
        // hues
        for (var i = 0; i < 15; i++) { // x / saturation
            for (var j = 0; j < 100; j++) { // y / value (brightness)
                draw_point_colour(108 + i, 5+j, make_colour_hsv(255-2.55*j, 255, 255));
            }
        }
        
        // draw sprites
        draw_sprite(spr_cbGUI_colorpicker, 0, _cx + 5, _cy + 5);
        draw_sprite(spr_cbGUI_colorslider, 0, 123, _hy + 5);

    surface_reset_target();
}

if (surface_exists(_surface)) {
    draw_surface(_surface, x+_border/2, y+_bodyH+_border*2+_yoffset);
}


/*// debug
draw_set_font(cbGUIDebugFont);
    draw_set_colour(c_black);
    draw_set_halign(fa_left);
    draw_text(x, y + _bodyH + 122, "h:"+string(_hue)+ ", " + 
                                   "s:"+string(_sat)+ ", " +
                                   "v:"+string(_val)+ ", #" +
                                   "x:"+string(_cx)+ ", " +
                                   "y:"+string(_cy)+ ", " +
                                   "hy:"+string(_hy));

// bounding box
draw_set_alpha(.4);
draw_set_colour(c_red);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
*/


/* */
/*  */
