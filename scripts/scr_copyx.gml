/// scr_copyx(thisNode);
var thisNode = argument[0];
var beginh = array_height_2d(cutSet);
var copyTime = thisNode.sibling-1;
while (copyTime) {
    var i = 0;
    while (i < beginh) {
        var j = 0;
        var lengthi = array_length_2d(cutSet,i);
        while (j < lengthi) {
            if (cutSet[i,j].data == thisNode.parent.data) {
                var k = array_height_2d(cutSet);
                var l = 0;
                while (l < lengthi) {
                    cutSet[k,l] = cutSet[i,l];
                    l++;
                }
            }
            j++;
        }
        i++;     
    }
    copyTime--;
}
return 1;
