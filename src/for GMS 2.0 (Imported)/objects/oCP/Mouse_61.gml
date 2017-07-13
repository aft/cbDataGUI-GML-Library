_hue -= 5;
_hue = _hue mod 255;

if (surface_exists(_surface)) surface_free(_surface);

