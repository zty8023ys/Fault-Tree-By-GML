/// scr_copy();
var thisNode = argument[0];



var p = 0;
var q = 0;
var cutSetHeight = array_height_2d(cutSet);
while (p < cutSetHeight) {
    var maxq = array_length_2d(cutSet,p);
    show_message(string(p) + "/" + string(array_height_2d(cutSet)) + "." +string(q)+ "/" + string(maxq));
    while (q < maxq) {
        if (cutSet[p,q].data == thisNode.parent.data) {
            //var j = array_length_2d(cutSet,thisNode.parent.xp);
            var k = 0;
            thisNode.xp = cutSetHeight;
            thisNode.yp = thisNode.parent.yp;
            while (k < maxq) {
                if (k != thisNode.yp) {
                    cutSet[thisNode.xp,k] = cutSet[thisNode.parent.xp,k];
                } else {
                    cutSet[thisNode.xp,k] = thisNode;
                }
                k++;
            }
        }
        q++;
    }
    p++;
}
