if (!_c._isOpen) exit;

// Draw row bg
draw_set_alpha(1);
draw_set_color(global._cbColors[_cbDataGUIColor.seperator]);
draw_rectangle(x, y, x + _bodyW, y + _bodyH, false);

// Draw Preset text
draw_set_color(global._cbColors[_cbDataGUIColor.label]);
draw_set_font(_c.font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x + _leftPadding, y + _topPadding, string_hash_to_newline("Presets:"));


