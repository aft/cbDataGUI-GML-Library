// image 0 - normal
// image 1 - focus
// image 2 - pressed
// image 3 - disabled

if (_pressed) {
    image_index = 2
} else if (_onFocus || _mouseOver) {
    image_index = 1;
} else if (disabled) {
    image_index = 3
} else {
    image_index = 0;
}

d3d_transform_set_identity();
d3d_transform_set_rotation_z(rotation);
d3d_transform_add_translation(x, y, 0);
   
    // draw button body
    draw_sprite_ext(sprite_index, image_index, 0,   0, image_xscale, image_yscale,  0, c_white, alpha);

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
