lastInput = argument[0];
var abegin = string_pos('[',lastInput)+1;
var aend = string_pos(']',lastInput)-1;
var alength = aend - abegin + 1;
global.count++;
switch(global.count) {
    case 1:
        global.A = string_copy(lastInput,abegin,alength);
        lastInput = string_copy(lastInput, aend+2, string_length(lastInput) - (aend+2) + 1);
        scr_getinput(lastInput);
    break;
    case 2:
        global.logic = string_pos('[',lastInput) - 1;
        global.B = string_copy(lastInput,abegin,alength);
        lastInput = string_copy(lastInput, aend+2, string_length(lastInput) - (aend+2) + 1);
        scr_getinput(lastInput);
    break;
    case 3:
        global.C = string_copy(lastInput,abegin,alength);
        global.count = 0;
        if (!instance_exists(oNode)) {
            global.root = instance_create(0,0,oNode);
            nodeList[0] = global.root;
            scr_insertnode(global.root, global.C, NULL, NULL, NULL, NULL);
            nodeList[++countNode] = instance_create(0,0,oNode);  // countNode先+1,此时为1
            nodeList[++countNode] = instance_create(0,0,oNode);  // countNode先+1,此时为2
            // scr_insertnode(node, data, parent, preSibling, logic, nextSibling);
            scr_insertnode(nodeList[countNode-1], global.A, global.root, NULL, NULL, nodeList[countNode]);
            scr_insertnode(nodeList[countNode], global.B, global.root, nodeList[countNode-1], global.logic, NULL);
        }
    break;
}
/*
if (alength) { 
    global.count++;
    nodeList[countNode] = instance_create(0,0,oNode);
    data = string_copy(lastInput,abegin,alength);
    nodeList[countNode].data = string_copy(lastInput,abegin,alength);
    ds_list_add(global.nodeList, string_copy(lastInput,abegin,alength));
        
}
