/// scr_andReplace(node);
var thisNode = argument[0];
if (!thisNode.preSibling) {
    var times = scr_check(thisNode.parent.data);
    var maxh = array_height_2d(cutSet);
    var i = 0;
    while (times && i < maxh) {
        var iflag = 0;
        var maxl = array_length_2d(cutSet,i);
        var j = 0;
        while (!iflag && times && j < maxl) {
            if (cutSet[i,j].data == thisNode.parent.data) {
                thisNode.xp = i;
                thisNode.yp = j;
                cutSet[i,j] = thisNode;
                var tempNode = thisNode.nextSibling;
                while (tempNode) {
                    cutSet[i,array_length_2d(cutSet,i)] = tempNode;
                    tempNode = tempNode.nextSibling;
                }
                times--;
                iflag = 1;
            }
            j++;
        }
        i++;
    }
}
return 1;
