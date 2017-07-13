/// @description  fading out
alpha -= 0.01;

if (alpha <= 0) {
    alpha = 0;
    // Using 'with' for 1.4 compatibility
    with (id) instance_destroy();
} else {
    alarm[1] = 1;
}

