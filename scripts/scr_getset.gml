//／／定义最小割集序列

var index = 0;//当前最小割集的索引
for (var i = 0; i < global.maxRank; i++) {
    for (var j = 0; j < tempRank[i]; j++) {
        if (thisRank[j].image_index == 0) {
            if (thisRank[j].logic == AND) {  // 与门
                var thisNode = thisRank[j].firstChild;
                for(var k=0;k < thisNode;k++) {
                     set[index] += thisRank[j].firstChild;
                }
            }
            else if (thisRank[j].logic == OR) {  // 或门
                
            }
        } else if (thisRank[j].image_index == 1) {
            continue;
        }
    }
}
