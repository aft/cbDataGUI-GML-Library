var hh = 0;
if (_isOpen) hh = _bodyH;

if (point_in_rectangle(_nx, _ny, x, y + hh - _rowH, x + _bodyW, y + hh + _rowH - 3)) {
    if (scr_cbGUI_mouse(true)) _scr_cbDataGUI_togglegui();
}

