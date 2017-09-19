/// scr_cbDataGUI_has_preset_file();
/**
* @brief  Checks if there is an auto-load preset file in the sandbox folder.
*
* @return {Boolean} Returns true or false. Returns undefined if presets are not in use.
*
*/

var p = instance_find(obj_cbDataGUI_preset, 0);
if (!instance_exists(p)) return undefined;

with (p) {
    return file_exists(working_directory + _saveDirectory + _jsonFileName)
}

