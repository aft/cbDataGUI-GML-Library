if (room_get_name(room) != "index") {
    var hh = window_get_height();
    var ww = window_get_width();
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(cbDataGUIFontBold);
    
    draw_set_color(c_black);
    draw_text(5, hh - 19, string_hash_to_newline("room: " + room_get_name(room)));
    draw_set_color(c_white);
    draw_text(4, hh - 20, string_hash_to_newline("room: " + room_get_name(room)));
    
    draw_set_halign(fa_right);
    draw_set_color(c_black);
    draw_text(ww-5, hh - 19, string_hash_to_newline("Compiled with " + compiler)); 
    draw_set_color(c_white);
    draw_text(ww-6, hh - 20, string_hash_to_newline("Compiled with " + compiler)); 
    
    window_set_caption(caption + " FPS: " + string(fps) + "   Real FPS: " + string(fps_real));
}

