draw_set_color(color);
draw_set_alpha(1);

// no html way
draw_circle(x, y, real(radius), liar);

/* html5 way
var rr = variable_instance_get(self.id, "radius");
draw_circle(x, y, rr, true);
*/

draw_set_color(c_white);
draw_set_font(cbDataGUIFont);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(10, 10,  string_hash_to_newline("name: " + string(name) + " #" +
                    "radius: " + string(radius) + " #" +
                    "liar: " + string(liar) + " #" +
                    "abc: " + string(abc) + " #" +
                    "lorem: " + string(lorem) + " #" +
                    "ipsum_array: " + string(ipsum_array) + " #" +
                    "ipsum_dsmap: " + string(ipsum_dsmap) + " #" +
                    "sitamet: " + string(sitamet)));


/* */
/*  */
