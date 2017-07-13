// Based on the Google's datGUI FizzyText example
// https://workshop.chromeexperiments.com/examples/gui/#1--Basic-Usage
// Reverse engineered & ported to GML by Cem Baspinar

message = "";
growthSpeed = .8;           // how fast do particles change size?
minSize = 0;
maxSize = 7.5;              // how big can they get?
noiseStrength = 10;         // how turbulent is the flow?
pSpeed = 0.16;              // how fast do particles move?
displayOutline = false;     // should we draw the message as a stroke?
displayFlowNoise = false;
noiseScale = 1;
pAlpha = 1;
numOfParticles = 1000;

color1 = make_colour_rgb(0,174,255);
color2 = make_colour_rgb(15,169,84);
color3 = make_colour_rgb(84,57,110);
color4 = make_colour_rgb(230,29,95);
color_array[0] = color1; color_array[1] = color2; 
color_array[2] = color3; color_array[3] = color4; 

xoffset = 0;
yoffset = 0;

fizzyFont = cbDataGUIFizzyText;

particles = -1;
pBuffer = -1;
pSurface = -1;
fSurface = -1;
fBuffer = -1;

width = string_width(string_hash_to_newline(message));
height = string_height(string_hash_to_newline(message));

// Instantiate some particles
var dep = 4;
for (var i=0; i<dep; i++) {
    for (var j=0; j<numOfParticles/dep; j++){
        var p = instance_create(xoffset+width * random(1), yoffset+height * random(1), obj_fizzy_text_particle);
        with (p) {
            depth = -i;
            container = other;
            color = container.color_array[@i];
        }
        particles[i*numOfParticles/dep+j] = p;
    }
}


randomize();
scr_sn_init();
scr_ft_set_message("FizzyText");
scr_ft_create_flow_field();



