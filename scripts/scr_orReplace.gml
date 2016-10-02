/// scr_orReplace(node);
var thisNode = argument[0];
if (!thisNode.preSibling) {
    thisNode.parent.exTimes = scr_check(thisNode.parent.data)/thisNode.sibling; 
}
var times = thisNode.parent.exTimes;
var maxh = array_height_2d(cutSet);
var i = 0;
while (times && i < maxh) {
    var maxl = array_length_2d(cutSet,i);
    var j = 0;
    while (times && j < maxl) {
        if (cutSet[i,j].data == thisNode.parent.data) {
            cutSet[i,j] = thisNode;
            times--;
        }
        j++;
    }
    i++;
}
return 1;
