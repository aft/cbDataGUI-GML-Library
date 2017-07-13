if (!_c._isOpen) exit;

draw_set_font(font);
draw_set_halign(fa_right);
draw_set_valign(fa_top);

switch (error) {
    case false:
        // Draw row bg
        draw_set_alpha(alpha);
        draw_set_color(global._cbColors[_cbDataGUIColor.notification]);
        draw_rectangle(_c.x + _c._bodyW - 8, _c.y + 5 , _c.x + _c._bodyW - 17 - string_width(string_hash_to_newline(message)) , _c.y + 21, false);
        
        // Draw text
        draw_set_alpha(alpha);
        draw_set_color(global._cbColors[_cbDataGUIColor.button]);
        
        draw_text(_c.x + _c._bodyW - 12, _c.y + _c._padding + 1, string_hash_to_newline(message));
        break;
        
    case true:
        // Draw row bg
        draw_set_alpha(alpha);
        draw_set_color(global._cbColors[_cbDataGUIColor.function]);
        draw_rectangle(_c.x + _c._bodyW - 8, _c.y + 5 , _c.x + _c._bodyW - 17 - string_width(string_hash_to_newline(message)) , _c.y + 21, false);
        
        // Draw text
        draw_set_alpha(alpha);
        draw_set_color(global._cbColors[_cbDataGUIColor.label]);
        
        draw_text(_c.x + _c._bodyW - 12, _c.y + _c._padding + 1, string_hash_to_newline(message));
        break;



}



