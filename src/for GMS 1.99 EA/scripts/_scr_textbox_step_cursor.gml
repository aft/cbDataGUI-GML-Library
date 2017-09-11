if (_onFocus && visible && !disabled && !_selected) {

    if (alarm_get(0) < 0) {
        _showCursor = !_showCursor;
        alarm_set(0, blinkSpeed*room_speed);
    }
}
