///_scr_slider_setvalue(x);
// updates cursorX, value, _perc

if (minLimit != undefined && maxLimit != undefined) {
    value = clamp(real(argument0), min(minLimit, maxLimit), max(minLimit, maxLimit));
} else {
    value = real(argument0);
    // i dont like doing this.. pff.. any suggestions?
    if (value == 0) {
        // int32 - 1
        minLimit = -2147483647;
        maxLimit = 2147483647;
    } else {
        minLimit = min(value+(abs(value)), value-(abs(value)));
        maxLimit = max(value+(abs(value)), value-(abs(value)));
    }
}

_perc = abs((value-minLimit) / (maxLimit-minLimit));
_scr_slider_getcursorpos();

// changed
if (value != undefined && value != previousValue) {
    previousValue = value;
    _changed = true;
    _modifyTarget = true;
}



