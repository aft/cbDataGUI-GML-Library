/**
* <p>You may use folders to organize your cbDataGUI components optionally.
* Folders are created by using scr_cbDataGUI_add_folder() scripts.</p>

* <p>Folder instance needs to be created before creating the gui component
* because you specify which folder the component is going to be in
* using the component add script with an argument.</p>

* <p>Example Code:</p>
* <pre>var folder_flow = scr_cbDataGUI_add_folder("Flow");
* scr_cbDataGUI_add(obj, "message", cbData_type.text, folder_flow);</pre>

* <p>If a component is not going to be in a folder, -1 value needs to be
* passed for the folder argument.</p>

* <p>Example Code: </p>
* <pre>scr_cbDataGUI_add(obj, "message", cbData_type.text, -1);</pre>

* <p>Folders can be opened and closed using scr_cbDataGUI_open_folder() script.</p>
*/

event_inherited();

_folder = undefined;
_folderItems[0] = undefined;
_isOpen = true;

image_xscale = _c._bodyW;
image_yscale = _c._rowH;



/* */
/*  */
