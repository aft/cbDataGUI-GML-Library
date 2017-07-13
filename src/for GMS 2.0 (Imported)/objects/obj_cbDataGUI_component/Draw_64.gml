/// @description  Draw GUI
if (!_c._isOpen) exit;

x = _c.x;
y = _c.y + (_c._rowH * _row) + _c._presetH;

// row bg
draw_set_alpha(1);
draw_set_color(global._cbColors[_cbDataGUIColor.row]);
draw_rectangle(x + _indent * _c._folderIndent, y, x + _c._bodyW, y + _c._rowH - 1, false);

// seperator
draw_set_color(global._cbColors[_cbDataGUIColor.seperator]);
draw_rectangle(x + _indent * _c._folderIndent, y + _c._rowH - 1, x + _c._bodyW, y + _c._rowH - 1, false);

switch (_type) {

    case (cbData_type.text):
        draw_set_color(global._cbColors[_cbDataGUIColor.text]);
        draw_rectangle(x + _indent * _c._folderIndent, y, x + _c._colorW + _indent * _c._folderIndent, y + _c._rowH - 1, false);
        
        draw_set_color(global._cbColors[_cbDataGUIColor.label]);
        draw_set_font(_c.font);
        draw_set_halign(fa_left);
        draw_set_valign(fa_middle);
        draw_text(x + _indent * _c._folderIndent + _c._colorW + _c._padding, y + _c._rowH / 2, string_hash_to_newline(_name));
        
        _component.x = x + _c._bodyW - 150;
        _component.y = y + _topPadding;
        break;
    
    case (cbData_type.number):
        draw_set_color(global._cbColors[_cbDataGUIColor.number]);
        draw_rectangle(x + _indent * _c._folderIndent, y, x + _c._colorW + _indent * _c._folderIndent, y + _c._rowH - 1, false);
        
        draw_set_color(global._cbColors[_cbDataGUIColor.label]);
        draw_set_font(_c.font);
        draw_set_halign(fa_left);
        draw_set_valign(fa_middle);
        draw_text(x + _indent * _c._folderIndent + _c._colorW + _c._padding, y + _c._rowH / 2, string_hash_to_newline(_name));
        
        if (_multiple != undefined) {
            _component.x = x + _c._bodyW - 150;
            _component.y = y + _topPadding;
        } else {
            _component[@0].x = x + _c._bodyW - 150;
            _component[@0].y = y + _topPadding;
            
            _component[@1].x = x + _c._bodyW - 52;
            _component[@1].y = y + _topPadding;
        }
        break;
        
    case (cbData_type.boolean):
        draw_set_color(global._cbColors[_cbDataGUIColor.boolean]);
        draw_rectangle(x + _indent * _c._folderIndent, y, x + _c._colorW + _indent * _c._folderIndent, y + _c._rowH - 1, false);
        
        draw_set_color(global._cbColors[_cbDataGUIColor.label]);
        draw_set_font(_c.font);
        draw_set_halign(fa_left);
        draw_set_valign(fa_middle);
        draw_text(x + _indent * _c._folderIndent + _c._colorW + _c._padding, y + _c._rowH / 2, string_hash_to_newline(_name));
        
        _component.x = x + _c._bodyW - 150;
        _component.y = y + _topPadding;
        break;
        
    case (cbData_type.function):
        draw_set_color(global._cbColors[_cbDataGUIColor.function]);
        draw_rectangle(x + _indent * _c._folderIndent, y, x + _c._colorW + _indent * _c._folderIndent, y + _c._rowH - 1, false);
        
        _component.x = x + _indent * _c._folderIndent+ _c._colorW + _c._padding;
        _component.y = y + _topPadding;
        break;
        
    case (cbData_type.color):
        draw_set_color(_component.value);
        draw_rectangle(x + _indent * _c._folderIndent, y, x + _c._colorW + _indent * _c._folderIndent, y + _c._rowH - 1, false);
        
        draw_set_color(global._cbColors[_cbDataGUIColor.label]);
        draw_set_font(_c.font);
        draw_set_halign(fa_left);
        draw_set_valign(fa_middle);
        draw_text(x + _indent * _c._folderIndent + _c._colorW + _c._padding, y + _c._rowH / 2, string_hash_to_newline(_name));

        _component.x = x + _c._bodyW - 150;
        _component.y = y + _topPadding;
        break;
        
}

if (_tooltip != noone) {
    switch (_type) {
        case cbData_type.function:
            _tooltip.x = x + _c._bodyW - 17;
            _tooltip.y = y + _topPadding + 6;
            break;
        default:
            _tooltip.x = x + _c._bodyW - 164;
            _tooltip.y = y + _topPadding + 5;
            break;
    }
    
}

/*
if (_c._debug) {
    draw_set_alpha(.5);
    draw_set_color(c_red);
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
}
*/

/* */
/*  */
