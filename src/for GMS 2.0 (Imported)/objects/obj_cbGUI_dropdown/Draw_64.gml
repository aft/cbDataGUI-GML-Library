// image 0 - normal
// image 1 - focus
// image 2 - disabled

var cText;

if (_onFocus) {
    image_index = 1;
    cText = c_fText;
} else if (disabled) {
    image_index = 2
    cText = c_disabledText;
} else {
    image_index = 0;
    cText = c_text;
}


d3d_transform_set_identity();
d3d_transform_set_rotation_z(rotation);
d3d_transform_add_translation(x, y, 0);
   
    // draw popup first
    if (_open) {
        scr_draw_9slices_ext(sprite_popup, 0, _popupX1, _popupY1, _popupX2, _popupY2, c_white, alpha);

        // popup text
        draw_set_font(fontPopup);
        draw_set_halign(halign);
        draw_set_valign(valign);
        
        draw_set_alpha(alpha);
        var lno;
        if (_scrollBar) lno = _maxLineNo;
        else lno = _lineNo;
        for (var i = 0; i < lno; i++) {
            var th = _popupY1 + _popupTopPadding + _popupLH * (i + 1) - round(_popupLH / 2);  // text y
            var sh = _popupY1 + _popupTopPadding + _popupLH * (i + 1);  // seperator y
            var hh = _popupY1 + _popupTopPadding + _popupLH * i;// hover y
            
            // hover rect
            if (_hover == i) {
                draw_set_alpha(1);
                draw_set_color(c_popup_hover);
                draw_rectangle(1, hh, _bodyW-2, hh+_popupLH, false);
                draw_set_alpha(alpha);
                draw_set_color(c_text_popup_hover);
            } else {
                draw_set_color(c_text_popup_normal);
            }
            
            // popup text
            draw_text(_popupTextX, th, string_hash_to_newline(string(_visibleKeys[i+_lineOffset])));
            
            // seperator
            if (i+1 < lno) {
                var sw = sprite_get_width(sprite_seperator)/3;
                draw_sprite_part_ext(sprite_seperator, image_index, 0,    0,  sw, sprite_get_height(sprite_seperator),  1,          sh, 1,  1, c_white, alpha);
                draw_sprite_part_ext(sprite_seperator, image_index, sw,   0,  sw, sprite_get_height(sprite_seperator), sw,          sh, (_bodyW-2*sw)/sw, 1, c_white, alpha);
                draw_sprite_part_ext(sprite_seperator, image_index, sw*2, 0,  sw, sprite_get_height(sprite_seperator), _bodyW-sw-1, sh, 1,  1, c_white, alpha);
            }
        }
        
        // draw scrollbar
        if (_scrollBar) {
            // scrollbar bg
            draw_set_color(c_scrollbar_bg);
            draw_set_alpha(1);
            draw_rectangle(_popupX2 - 2 * _scrollBarRightPadding - _scrollBarW, _popupY1 + _scrollBarTopPadding, 
                           _popupX2 - 2 * _scrollBarRightPadding, _popupY2 - _scrollBarTopPadding - _scrollBarBottomPadding, false);    
            
            // scrollbar itself
            draw_set_color(c_scrollbar);
            if (_scrollingStarted) draw_set_alpha(.8); // make it abit transparent when mouse clicked on it
            else draw_set_alpha(1);
            draw_rectangle(_sbX1, _sbY1, _sbX2, _sbY2, false);  
            /*draw_rectangle(_popupX2 - 2 * _scrollBarRightPadding - _scrollBarW, _popupY1 + (_lineOffset * _scrollBarH / lno) + 1, 
                           _popupX2 - 2 * _scrollBarRightPadding,  _popupY1 + (_lineOffset * _scrollBarH / lno) + _scrollBarH - 1, 
                           false);*/
        }    
        
    }

    // draw dropdown body
    var sw = sprite_get_width(sprite_index)/3;
    draw_sprite_part_ext(sprite_index, image_index, 0,   0,  sw, sprite_height,  0,          0, 1,  1, c_white, alpha);
    draw_sprite_part_ext(sprite_index, image_index, sw,  0,  sw, sprite_height, sw,          0, (_bodyW-2*sw)/sw, 1, c_white, alpha);
    draw_sprite_part_ext(sprite_index, image_index, sw*2,0,  sw, sprite_height, _bodyW-sw, 0, 1,  1, c_white, alpha);
    
    // draw body text
    draw_set_font(fontBody);
    draw_set_halign(halign);
    draw_set_valign(valign);
    
    draw_set_alpha(alpha);
    draw_set_color(cText);

    if (_visibleKeyOnDropdown != undefined) {
        switch (halign) {
            case fa_left:
                draw_text(_leftPadding, round((_bodyH + _vOffset)/ 2), string_hash_to_newline(_visibleKeyOnDropdown));
                break;
            case fa_center:
                draw_text(ceil((_bodyW - _iconX)/ 2), round((_bodyH + _vOffset)/ 2), string_hash_to_newline(_visibleKeyOnDropdown));
                break;
            case fa_right:
                draw_text(_bodyW-(_rightPadding + _iconX), round((_bodyH + _vOffset)/ 2), string_hash_to_newline(_visibleKeyOnDropdown));
                break;
        }    
    }
     
    // draw icon
    draw_sprite(sprite_icon, image_index, _iconX, _iconY);

    
/*    
    // debug
    draw_set_font(cbGUIDebugFont);
    draw_set_colour(c_black);
    draw_set_halign(fa_left);
    draw_text(0, -8, "f:"+string(_onFocus)+ ", " + 
                     "o:"+string(_open)+ ", " +
                     "h:"+string(_hover)+ ", " +
                     "lo:"+string(_lineOffset)+ ", " +
                     "ss?"+string(_scrollingStarted)+ ", " +
                     "");

    // bounding box
    draw_set_alpha(.4);
    draw_set_colour(c_red);
    draw_rectangle(bbox_left-x, bbox_top-y, bbox_right-x, bbox_bottom-y, false);
*/ 

d3d_transform_set_identity();


/* */
/*  */
