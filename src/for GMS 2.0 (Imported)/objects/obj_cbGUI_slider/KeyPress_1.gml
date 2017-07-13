/// @description keyboard interactions
event_inherited();

if (disabled) exit; // skip if disabled
if (!visible) exit;
if (!_onFocus) exit; // skip if not on focus

var k = keyboard_lastkey;

// for arrow keys
var changeAmount;
if (_stepValue == undefined) changeAmount = 1;
else changeAmount = _iW / abs(maxLimit-minLimit) / _stepValue;
        
switch (k) {

    case (vk_escape): 
        // cancel
        _onFocus = false;
        // changed
        break;
                 
    case (vk_left):
        // fast decrement
        if (keyboard_check(vk_shift)) changeAmount *= 5;
        
        // slow decrement
        _scr_slider_setcursorpos(_cursorX-1*changeAmount);
        break;

                    
    case (vk_right):
        // fast increment
        if (keyboard_check(vk_shift)) changeAmount *= 5;
        
        // slow increment
        _scr_slider_setcursorpos(_cursorX+1*changeAmount);
        break;    

                
    case (vk_up): case (vk_home):
        // go to min value
        _scr_slider_setvalue(minLimit);
        break;

                
    case (vk_down): case (vk_end): 
        // go to max value
        _scr_slider_setvalue(maxLimit);
        break;
}

keyboard_lastkey = -1;

