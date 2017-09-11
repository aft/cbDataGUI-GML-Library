if (_onFocus && _dragging) {  //mouse_check_button(mb_left) &&
    // change value with mouse movement
    _scr_slider_setcursorpos(_nx-_iX);
}

if (_onFocus && mouse_check_button_released(mb_left) && _dragging) {
    // change value with mouse movement
    _dragging = false;
    _released = true;
}

if (_onFocus) {
    if (scr_cbGUI_mouse(true)) {
        var change_amount_ctrl, change_amount;
    
        if (_stepValue == undefined) {
            change_amount_ctrl = min(round(_iW / abs(maxLimit-minLimit)), 1);
            change_amount = abs(maxLimit-minLimit) * .05;
        } else {
            change_amount_ctrl = min(round(_iW / abs(maxLimit-minLimit) * _stepValue), 1);
            change_amount = _stepValue;
        }
    
        if (mouse_wheel_up()) {
        
            if (keyboard_check(vk_shift)) {
                // fast increment
                _scr_slider_setvalue(value+change_amount*5);
            } else if (keyboard_check(vk_control)) {
                // 1 px increment
                _scr_slider_setcursorpos(_cursorX+change_amount_ctrl);
            } else {
                // slow increment
                _scr_slider_setvalue(value+change_amount);
            }
            
        } else if (mouse_wheel_down()) {
        
            if (keyboard_check(vk_shift)) {
                // fast decrement
                _scr_slider_setvalue(value-change_amount*5);
            } else if (keyboard_check(vk_control)) {
                // 1 px decrement
                _scr_slider_setcursorpos(_cursorX-change_amount_ctrl);
            } else {
                // slow decrement
                _scr_slider_setvalue(value-change_amount);
            }
            
        }
    }
}
