// image 0 - normal
// image 1 - focus
// image 2 - pressed
// image 3 - disabled

var cLabel;

if (_pressed) {
    image_index = 2
    cLabel = c_pressed;
} else if (_onFocus || _mouseOver) {
    image_index = 1;
    cLabel = c_fLabel;
} else if (disabled) {
    image_index = 3
    cLabel = c_disabledLabel;
} else {
    image_index = 0;
    cLabel = c_label;
}


d3d_transform_set_identity();
d3d_transform_set_rotation_z(rotation);
d3d_transform_add_translation(x, y, 0);
   
    // draw button body
    var sw = sprite_get_width(sprite_index)/3;
    draw_sprite_part_ext(sprite_index, image_index, 0,   0,  sw, sprite_height,  0,          0, 1,  1, c_white, alpha);
    draw_sprite_part_ext(sprite_index, image_index, sw,  0,  sw, sprite_height, sw,          0, (_buttonW-2*sw)/sw, 1, c_white, alpha);
    draw_sprite_part_ext(sprite_index, image_index, sw*2,0,  sw, sprite_height, _buttonW-sw, 0, 1,  1, c_white, alpha);
    
    // draw label
    if (_visibleLabel != undefined) {
        draw_set_font(font);
        draw_set_halign(halign);
        draw_set_valign(valign);
        
        draw_set_alpha(alpha);
        draw_set_color(cLabel);
        
        switch (halign) {
            case fa_left:
                draw_text(_leftPadding, round((_buttonH + _vOffset) / 2), string_hash_to_newline(_visibleLabel));
                break;
            case fa_center:
                draw_text(ceil(_buttonW / 2), round((_buttonH + _vOffset) / 2), string_hash_to_newline(_visibleLabel));
                break;
            case fa_right:
                draw_text(_buttonW-_rightPadding, round((_buttonH + _vOffset) / 2), string_hash_to_newline(_visibleLabel));
                break;
        } 
        //draw_rectangle(_leftPadding, sprite_height/2-string_height(_visibleLabel)/2, _leftPadding+string_width(_visibleLabel), sprite_height/2+string_height(_visibleLabel)/2, true);
    }
    
/*
    // debug
    draw_set_font(cbGUIDebugFont);
    draw_set_colour(c_black);
    draw_set_halign(fa_left);
    draw_text(0, 38, "f:"+string(_onFocus)+ ", " + 
                     "mI:"+string(_mouseOver)+ ", " +
                     "mO:"+string(_mouseOut)+ ", " +
                     "mP:"+string(_pressed)
                     );    
*/
d3d_transform_set_identity();


/* */
/*  */
