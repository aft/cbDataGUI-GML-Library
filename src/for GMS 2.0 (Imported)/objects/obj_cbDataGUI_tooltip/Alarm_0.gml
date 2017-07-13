/// @description  Show/hide fade anim
switch (_mouseOver) {
    case true:
        alpha += 0.15;
        if (alpha < 1) alarm[0] = 1;
        else alpha = 1;
        break;
    
    case false:
        alpha -= 0.15;
        if (alpha > 0) alarm[0] = 1;
        else alpha = 0;
        break;
}

