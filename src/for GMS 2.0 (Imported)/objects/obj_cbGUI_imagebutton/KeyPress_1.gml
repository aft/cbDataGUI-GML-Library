/// @description keyboard interactions
event_inherited();

if (disabled) exit; // skip if disabled
if (!visible) exit;
if (!_onFocus) exit; // skip if not on focus

var k = keyboard_lastkey;
   
switch (k) {

    case (vk_escape): 
        // cancel
        _onFocus = false;
        // changed
        break;

}

keyboard_lastkey = -1;


