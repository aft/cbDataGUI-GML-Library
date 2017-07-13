/// @description keyboard interactions
event_inherited();

if (disabled) exit; // skip if disabled
if (!visible) exit;
if (!_onFocus) exit; // skip if not on focus

var k = keyboard_lastkey;
var c = keyboard_lastchar;


switch (k) {

    case (vk_delete): 
        if (_selected) {
            // _selection present
            _scr_textbox_remove();
        } else {
            // no _selection
            if (_cursorPos+1 <= _txtLen) {
               var offset = 0;
               if (string_char_at(value, _cursorPos+2) == "#") offset = 1;
               _selection[@0] = _cursorPos;
               _selection[@1] = _cursorPos+1+offset;
               _selected = true;
               _scr_textbox_remove();
            }
        }
        break;

    case (vk_backspace): 
        if (_selected) {
            // _selection present
            _scr_textbox_remove();
        } else {
            // no _selection
            var offset = 0;
            if (string_char_at(value, _cursorPos) == "#") offset = -1;
            _selection[@0] = _cursorPos-1+offset;
            _selection[@1] = _cursorPos;
            _selected = true;
            _scr_textbox_remove();
        }
        break;

    case (vk_enter): 
        // done editing
        _submitted = true;
        
        // cancel
        _scr_textbox_unselect();
        break;

    case (vk_escape): 
        // cancel
        _onFocus = false;
        _scr_textbox_invalidatesurface();
        break;
                 
    case (vk_left):
        if (keyboard_check(vk_shift)) {
            if (!_selected) {
                _selection[@0] = _cursorPos;
                _selection[@1] = _cursorPos;
                _selected = true;
            } 
            var offset = 0;
            if (string_char_at(value, _cursorPos) == "#") offset = -1;

            _selection[@1] = _selection[1] - 1 + offset;
            _selection[@1] = clamp(_selection[@1], 0, string_length(value));
            //_scr_textbox_setcursorpos(_selection[0]+1+offset);
            
            // scroll if needed
            if (_lo > 0 && _cursorX <= 0) _scr_textbox_scrolltxt(-1+offset);
            if (abs(_selection[0] - _selection[1]) == 0) _scr_textbox_unselect();
            _scr_textbox_invalidatesurface();
        } else {
            _scr_textbox_unselect();
        }
        var offset = 0;
        if (string_char_at(value, _cursorPos) == "#") offset = -1;
        
        if (_lo > 0 && _cursorX < 4) _scr_textbox_scrolltxt(-1+offset);
        _scr_textbox_setcursorpos(_cursorPos-1+offset);
        
        
        break;

                    
    case (vk_right): 
        if (keyboard_check(vk_shift)) {
            if (!_selected) {
                _selection[@0] = _cursorPos;
                _selection[@1] = _cursorPos;
                _selected = true;
            }
            var offset = 0;
            if (string_char_at(value, _cursorPos+2) == "#") offset = 1;
            
            _selection[@1] = _selection[@1] + 1 + offset;
            _selection[@1] = clamp(_selection[@1], 0, string_length(value));
            //_scr_textbox_setcursorpos(_selection[0]-1-offset);
            
             if (_ro > 0 && _cursorPos >= _txtLen-_ro ) _scr_textbox_scrolltxt(1+offset);
            if (abs(_selection[0] - _selection[1]) == 0) _scr_textbox_unselect();
            _scr_textbox_invalidatesurface();
        } else {
            _scr_textbox_unselect();
        }
        var offset = 0;
        if (string_char_at(value, _cursorPos+2) == "#") offset = 1;
        
        if (_ro > 0 && _cursorPos >= _txtLen-_ro ) _scr_textbox_scrolltxt(1);
        _scr_textbox_setcursorpos(_cursorPos+1+offset);
        
        
        break;    

                
    case (vk_up): case (vk_home):
        _scr_textbox_gotostart();
        break;

                
    case (vk_down): case (vk_end): 
        _scr_textbox_gotoend();
        break;

            
    default:
        if (_scr_check_valid_char(string(c))) {
            // _selection present
            if (_selected) {
                _scr_textbox_remove();
                _scr_textbox_setcursorpos(_cursorPos);
            }
            // no _selection
            _scr_textbox_inserttext(c);
        }
        break;

}

keyboard_lastkey = -1;
keyboard_lastchar = "";

