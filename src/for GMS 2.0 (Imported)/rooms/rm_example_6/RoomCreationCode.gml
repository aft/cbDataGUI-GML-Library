with obj_fizzy_text scr_ft_set_message("Import");

// Adds a textbox for the animated message
scr_cbDataGUI_add(obj_fizzy_text, "message", cbData_type.text, -1);
scr_cbDataGUI_set_on_change_cb(obj_fizzy_text, "message", scr_ft_onchange_set_message);

// Adds a slider for the particle speed
scr_cbDataGUI_add(obj_fizzy_text, "pSpeed", cbData_type.number, -1);
scr_cbDataGUI_set_range(obj_fizzy_text, "pSpeed", -2.5, 2.5);

// Adds a slider for the particle growth speed
scr_cbDataGUI_add(obj_fizzy_text, "growthSpeed", cbData_type.number, -1);
scr_cbDataGUI_set_range(obj_fizzy_text, "growthSpeed", -5, 5);

// Adds a slider for the strength of the flow field noise
scr_cbDataGUI_add(obj_fizzy_text, "noiseStrength", cbData_type.number, -1);
scr_cbDataGUI_set_range(obj_fizzy_text, "noiseStrength", 1, 50);
scr_cbDataGUI_set_step(obj_fizzy_text, "noiseStrength", 5);
scr_cbDataGUI_set_on_change_cb(obj_fizzy_text, "noiseStrength", scr_ft_onchange_update_flow_field);

// Adds a slider for the maximum particle size
scr_cbDataGUI_add(obj_fizzy_text, "maxSize", cbData_type.number, -1);
scr_cbDataGUI_set_range(obj_fizzy_text, "maxSize", 5, 20);

// Enables saving data values to a preset
scr_cbDataGUI_use_presets(true);

json_str = @" {
   "+"\""+@"presets"+"\""+@":[
      {
         "+"\""+@"Normal"+"\""+@":{
            "+"\""+@"growthSpeed"+"\""+@":0.978261,
            "+"\""+@"maxSize"+"\""+@":5.652174,
            "+"\""+@"pSpeed"+"\""+@":0.597826,
            "+"\""+@"message"+"\""+@":"+"\""+@"Normal"+"\""+@",
            "+"\""+@"noiseStrength"+"\""+@":5.9
         }
      },
      {
         "+"\""+@"Fast"+"\""+@":{
            "+"\""+@"growthSpeed"+"\""+@":0.543478,
            "+"\""+@"maxSize"+"\""+@":9,
            "+"\""+@"pSpeed"+"\""+@":1.521739,
            "+"\""+@"message"+"\""+@":"+"\""+@"Fast"+"\""+@",
            "+"\""+@"noiseStrength"+"\""+@":5
         }
      }
   ],
   "+"\""+@"preset"+"\""+@":"+"\""+@"Fast"+"\""+@"
} ";

scr_cbDataGUI_import_presets_json(json_str);