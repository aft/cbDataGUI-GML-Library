if (displayFlowNoise) {
    if (surface_exists(fSurface)) {
        draw_surface_ext(fSurface, xoffset, yoffset, 1, 1, 0, c_white, 1);
    }
}

if (displayOutline) {
    if (surface_exists(pSurface)) {
        draw_surface_ext(pSurface, xoffset, yoffset, 1, 1, 0, c_white, .5);
    }
}


