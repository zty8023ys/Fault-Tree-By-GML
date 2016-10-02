/// scr_go(node);
var thisNode = argument[0];

switch(thisNode.parent.logic) {
    case AND :
        if (!thisNode.preSibling) {
            scr_andReplace(thisNode);
        }
        if (thisNode.nextSibling) {
            scr_go(thisNode.nextSibling);
        }
        if (thisNode.firstChild) {
            scr_go(thisNode.firstChild);
        }
        return 1;
    break;
    
    case OR:
        if (!thisNode.preSibling) {
            scr_copyx(thisNode);
        }
        scr_orReplace(thisNode);
        if (thisNode.nextSibling) {
            if (scr_go(thisNode.nextSibling) && thisNode.firstChild) {
                scr_go(thisNode.firstChild);
            }
        } else {
            if (thisNode.firstChild) {
                scr_go(thisNode.firstChild);
            }
        }
        return 1;
        break;
    case 0 :
        scr_equlReplace(thisNode);
        return 1;
    break;
}
