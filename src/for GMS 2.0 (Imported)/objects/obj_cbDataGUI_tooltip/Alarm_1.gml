/// @description  Sets tooltip popup position with a low priority.

if (_component != noone) {
    if (_component.x < _gw/2) {
        _pd = 2; // POPUP ON LEFT SIDE
    } else {
        _pd = 0; // POPUP ON RIGHT SIDE
    }
    
    switch (_pd) {
        case 0:
            _px = _component.x - _bodyW - 10;
            _py = _component.y - 4;
            _pax = _bodyW - 4;
            _pay = round(_component._c._rowH / 2);
            break;
        case 2:
            _px = _component.x + _component._c._bodyW + 10;
            _py = _component.y - 4;
            _pax = -6;
            _pay = round(_component._c._rowH / 2);
            break;
    }
    
}

alarm[1] = 10; // once every 10 frames

