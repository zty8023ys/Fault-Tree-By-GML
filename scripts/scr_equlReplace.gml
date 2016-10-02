/// scr_equlReplace(thisNode);
var thisNode = argument[0];
var i = 0;
var height = array_height_2d(cutSet);
while (i < height) {
    var j = 0;
    var lenght = array_length_2d(cutSet,i);
    while (j < lenght) {
        if (cutSet[i,j].data == thisNode.parent.data) {
            thisNode.xp = i;
            thisNode.yp = j;
            cutSet[i,j] = thisNode;
        }
        j++;
    }
    i++;
}
return 1;
