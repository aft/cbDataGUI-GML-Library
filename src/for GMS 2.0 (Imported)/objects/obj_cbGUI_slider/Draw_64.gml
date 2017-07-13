// image 0 - normal
// image 1 - focus
// image 2 - disabled
_scr_slider_calcindicator();

var indicatorColor;

if (_onFocus) {
    image_index = 1;
    indicatorColor = c_indicator;
} else if (disabled) {
    image_index = 2
    indicatorColor = c_disabledIndicator;
} else {
    image_index = 0;
    indicatorColor = c_foutIndicator;
}

d3d_transform_set_identity();
d3d_transform_set_rotation_z(rotation);
d3d_transform_add_translation(x, y, 0);
   
    // draw slider
    var sw = sprite_get_width(sprite_index)/3;
    draw_sprite_part_ext(sprite_index, image_index, 0,   0, sw, sprite_height, 0, 0, 1,  1, c_white, alpha);
    draw_sprite_part_ext(sprite_index, image_index, sw,  0, sw, sprite_height, sw, 0, (_sliderW-2*sw)/sw, 1, c_white, alpha);
    draw_sprite_part_ext(sprite_index, image_index, sw*2,0, sw, sprite_height, _sliderW-sw, 0, 1,  1, c_white, alpha);
    
    // draw indicator
    var iw = _iW*_perc;
    draw_set_alpha(alpha);
    if (_cursorX > hPadding) {
        if (!is_undefined(sprite_indicator)) {
            var siw = sprite_get_width(sprite_indicator)/3;
            var sih = sprite_get_height(sprite_indicator);
            if (iw <= siw) draw_sprite_part_ext(sprite_indicator, image_index, 0,    0,  siw, sih,   hPadding,    vPadding, iw/siw,  1, c_white, alpha);
            else draw_sprite_part_ext(sprite_indicator, image_index, 0,    0,  siw, sih,   hPadding,              vPadding, 1,  1, c_white, alpha);
            if (iw > siw) {
                if (iw <= _iW-hPadding-siw) draw_sprite_part_ext(sprite_indicator, image_index, siw,  0,  siw, sih,   hPadding+siw, vPadding, (iw-siw)/siw, 1, c_white, alpha);
                else draw_sprite_part_ext(sprite_indicator, image_index, siw,  0,  siw, sih,   hPadding+siw, vPadding, (_iW-hPadding-2*siw)/siw, 1, c_white, alpha);
            }
            if (iw > _iW-siw) draw_sprite_part_ext(sprite_indicator, image_index, siw*2, 0,  siw, sih, _iW-siw, vPadding, (iw-(_iW-siw))/siw,  1, c_white, alpha);
        } else {
            draw_set_color(indicatorColor);
            draw_rectangle(hPadding, vPadding, (_iW-1)*_perc, _iH-1, false);
        }    
    }

    // draw button
    if (showButton) {
        draw_sprite_ext(sprite_button, image_index, iw, floor(_sliderH/2), 1, 1, 0, c_white, alpha);
    }


/*
    // debug
    draw_set_font(cbGUIDebugFont);
    draw_set_colour(c_black);
    draw_set_halign(fa_left);
    draw_text(0, 34, "v:"+string(value)+ ", " + 
                     "p:"+string(_perc)+ ", " +
                     "c:"+string(_cursorX)+ ", " +
                     string(_iW) + ", " + string(iw) + ", " + string(_sliderW)
                     );    
*/
d3d_transform_set_identity();
/*
// bbox
draw_set_color(c_red);
draw_set_alpha(.5);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);

*/

/* */
/*  */
