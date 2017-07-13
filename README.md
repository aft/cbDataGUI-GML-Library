cbDataGUI GML Library
==========

cbDataGUI is an open-source, easy to implement GUI for manipulating object instance variables written in GML (Gamemaker Studio's scripting language)

Best fit for debugging, data visualization, demos and prototyping.

cbDataGUI is based on the idea and the look of Google’s Dat.GUI library.

Usage
-----

Minimal:

```gml
// String example
scr_cbDataGUI_add(obj_fizzy_text, "message", cbData_type.text, -1);

// Number example
scr_cbDataGUI_add(obj_fizzy_text, "pSpeed", cbData_type.number, -1); 

// Boolean example
scr_cbDataGUI_add(obj_fizzy_text, "displayOutline", cbData_type.boolean, -1); 

// Script example
scr_cbDataGUI_add(obj_fizzy_text, "scr_fizzy_text_explode", cbData_type.function, -1);

```


More Info
------
For more info, check the documentation provided with the project file.


Contributing
-----
It's through your contributions that cbDataGUI will continue to improve. You can contribute in several ways.

**Issues:** Provide a detailed report of any bugs you encounter and open an issue.

**Documentation:** If you'd like to fix a typo or beef up the docs, you can fork the project, make your changes, and submit a pull request.

**Code:** Make a fix and submit it as a pull request. When making changes, add comments to describe the changes.



Author
------
Cem Baspinar

+ http://github.com/aft
+ http://twitter.com/aft


Thanks
------
Thanks to anyone who downloaded the extention from the marketplace.


Copyright and License
----
Copyright 2017 Cem Baspinar

Code released under the MIT License.