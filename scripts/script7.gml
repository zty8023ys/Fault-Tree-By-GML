var thisNode = global.root;
cutSet[0,0] = thisNode;
if (scr_go(thisNode.firstChild)){
    return 1;
}
