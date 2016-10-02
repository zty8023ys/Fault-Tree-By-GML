/// scr_check(node.data);
var data = argument[0];
var count = 0;
var height = array_height_2d(cutSet);
var i = 0;
while (i < height) {
    var length = array_length_2d(cutSet,i);
    var j = 0;
    while (j < length) {
        if (cutSet[i,j].data == data) {
            count++;
        }
        j++;
    }
    i++;
}
return count;
