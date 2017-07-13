if (!visible) exit;
if (container == noone) exit;

// What color is the pixel we're sitting on top of?
var spix = pbuffer_get_pixel(container.pBuffer, floor(x-container.xoffset), floor(y-container.yoffset));
var sc = pbuffer_pixel_get_a(spix);

// What color is the pixel on the flow field?
var fpix = pbuffer_get_pixel(container.fBuffer, floor(x-container.xoffset), floor(y-container.yoffset));
var fc = pbuffer_pixel_get_r(fpix);

// Where should we move?
var angle = 360 * fc / 255 * container.noiseStrength * 0.3;

// Are we within the boundaries of the image?
var onScreen = x > container.xoffset && x < container.xoffset+container.width && 
               y > container.yoffset && y < container.yoffset+container.height;
var isSolid = (sc == 255);

// If we're on top of a black pixel, grow. If not, shrink.
if (isSolid) r += container.growthSpeed;
else r -= container.growthSpeed;

r = clamp(r, container.minSize, container.maxSize);
if (r == 0) {
    x = container.xoffset + container.width * random(1);
    y = container.yoffset + container.height * random(1);
    switch (-depth) {
        case 0: color = container.color1; break;
        case 1: color = container.color2; break;
        case 2: color = container.color3; break;
        case 3: color = container.color4; break;
    }
}

// This velocity is used by the explode function.
vx *= 0.5;
vy *= 0.5;

// Change our position based on the flow field and our
// explode velocity.
x += dcos(angle) * container.pSpeed + vx;
y += -dsin(angle) * container.pSpeed + vy;

// If we're off the screen, go over to other side
if (x < container.xoffset) x = container.xoffset + container.width * random(1);
if (x > container.xoffset + container.width) x = container.xoffset + container.width * random(1);
if (y < container.yoffset) y = container.yoffset + container.height * random(1);
if (y > container.yoffset + container.height) y = container.yoffset + container.height * random(1);


