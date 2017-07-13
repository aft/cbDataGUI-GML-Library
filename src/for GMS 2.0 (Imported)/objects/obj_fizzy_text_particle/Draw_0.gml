if (container == noone) exit;
if (r == 0) exit;

// Draw the circle.
draw_set_color(color);
draw_set_alpha(container.pAlpha);
draw_circle(x, y, r, false);


