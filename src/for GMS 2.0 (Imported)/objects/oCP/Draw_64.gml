if (!surface_exists(_surface)) {
    _surface = surface_create(128, 128);
    surface_set_target(_surface);
        
        draw_set_alpha(1);
        draw_set_color(c_black);
        // bg
        draw_rectangle(0, 0, 128, 110, false);
        // outline
        draw_set_color($000000);
        draw_rectangle(4, 4, 105, 105, true);
        draw_rectangle(107, 4, 123, 105, true);    
    
        // values
        for (var i = 0; i < 100; i++) { // x / saturation
            for (var j = 0; j < 100; j++) { // y / value (brightness)
                draw_point_colour(5+i, 5+j, make_colour_hsv(_hue, 2.55*i, 255-2.55*j));
            }
        }
        
        // hues
        for (var i = 0; i < 15; i++) { // x / saturation
            for (var j = 0; j < 100; j++) { // y / value (brightness)
                draw_point_colour(108 + i, 5+j, make_colour_hsv(255-2.55*j, 255, 255));
            }
        }

    surface_reset_target();
}

if (surface_exists(_surface)) {
    draw_surface(_surface, x, y);
}


