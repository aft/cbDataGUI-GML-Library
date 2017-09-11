///scr_ft_create_flow_field();

if (surface_exists(fSurface)) surface_free(fSurface);
noise = gpu_noise_create_ext(1, seed, width, height, 2, 1, noiseScale * 0.3);
fSurface = gpu_noise_to_surface(noise);



