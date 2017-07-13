if (!disabled && _onFocus && !_selected) {
    _showCursor = !_showCursor;
    alarm_set(0, blinkSpeed*room_speed);
}


