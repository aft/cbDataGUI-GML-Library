// image 0 - normal
// image 1 - focus
// image 2 - disabled

var textCol;
if (_onFocus) {
    image_index = 1;
    textCol = c_focused;
} else if (disabled) {
    image_index = 2;
    textCol = c_text_disabled;
} else {
    image_index = 0;
    textCol = c_text;
}


d3d_transform_set_identity();
d3d_transform_set_rotation_z(rotation);
d3d_transform_add_translation(x, y, 0);
   
    // draw checkbox
    var spr = sprite_index;
    if (value) spr = pressed_sprite_index;
    draw_sprite_ext(spr, image_index, 0, 0, 1, 1, 0, c_white, alpha);
    
    // draw tick
    if (value) {
        draw_sprite_ext(tick_sprite_index, image_index, 
                        sprite_width / 2, 
                        sprite_height / 2, 
                        1, 1, 0, c_white, alpha);
    }
    
    // Draw label
    if (!is_undefined(label)) {
        draw_set_font(font);
        draw_set_halign(halign);
        draw_set_valign(valign);
        draw_set_color(textCol);
        draw_set_alpha(alpha);
        draw_text(_leftPadding, _topPadding, string_hash_to_newline(label));
    }
    
/*    
    // debug
    draw_set_font(cbGUIDebugFont);
    draw_set_colour(c_black);
    draw_set_halign(fa_left);
    draw_text(0, 34, "v:"+string(value));    
*/
d3d_transform_set_identity();


/* */
/*  */
