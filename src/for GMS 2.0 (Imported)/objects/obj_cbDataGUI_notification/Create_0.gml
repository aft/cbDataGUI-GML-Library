/**
* <p>Notifications are tiny little messages that appear and disappear
* on the top right of the cbDataGUI.</p>
 
* <p>There are two different color options for the message background.
* Yellow is for any kind of messages and red is for error messages.</p>

* <p>To show a notification use scr_cbDataGUI_set_notificaton() script.</p>

* <p>Example Code:</p>
* <pre>scr_cbDataGUI_set_notification("This is a notification, false);
* scr_cbDataGUI_set_notification("This is an error, true);</pre>

*/

_c = obj_cbDataGUI_controller;
message = "";
error = false;
alpha = 1;
font = cbDataGUIFontBold;


/* */
/*  */
