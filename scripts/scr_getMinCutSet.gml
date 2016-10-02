/*// scr_getMinCutSet();
var i = 0;  // 数组纵坐标
var j = 0;  // 数组横坐标
for (;i<50;i++) {  // 初始化一个20*50的数组
    for (;j<20;j++) {
        cutSet[i,j] = 0;
    }
}

var rootNode = global.root;

cutSet[0,0] = rootNode;

var k = 1;  // 故障树高度坐标
var l = 0;  // 故障树每层宽度坐标

for (;k<=maxRank;k++) {
    for (;l<=tempRank[k];l++) {
        switch(thisRank[l].logic) {
            case OR :
                
            break;
            
            case AND :
                
            break;
            
            case 0 :
                continue;
            break;
        }
    }    
}
