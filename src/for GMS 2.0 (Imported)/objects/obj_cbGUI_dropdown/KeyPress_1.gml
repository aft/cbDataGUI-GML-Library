/// @description keyboard interactions
event_inherited();

if (disabled) exit; // skip if disabled
if (!visible) exit;
if (!_onFocus) exit; // skip if not on focus

var k = keyboard_lastkey;
   
switch (k) {

    case (vk_escape): 
        // cancel
        if (_open) _scr_dropdown_openpopup(false);
        else _onFocus = false;
        // changed
        break;

    case (vk_enter): case(vk_space):
        // if opened, close popup
        if (_open) {
            if (_hover != -1) {
                _scr_dropdown_setvaluebyitemno(_hover);
                _scr_dropdown_onchange();
            }
            _scr_dropdown_openpopup(false);
        }
        // if closed, open popup
        else _scr_dropdown_openpopup(true);
        break;       

    case (vk_up): 
        // move up
        if (_open) {
            _hover--;
            if (_hover <= 0 && _lineOffset > 0) {
                _lineOffset--;
                _hover = 0;
                _scr_dropdown_setscrollbar();
            }
            _hover = clamp(_hover, 0, array_length_1d(_visibleKeys)-1);
        }
        break;

    case (vk_down): 
        // move down
        if (_open) {
            _hover++;
            if (_hover >= _maxLineNo-1) {
                _lineOffset++;
                _hover = _maxLineNo-1;
                _scr_dropdown_setscrollbar();
            }
            _hover = clamp(_hover, 0, array_length_1d(_visibleKeys)-1);
        }
        break;

}

keyboard_lastkey = -1;


