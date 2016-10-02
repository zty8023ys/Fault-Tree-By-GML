/// scr_analyzeInput(input);
var str = argument[0];
/*IF[A]AND[BB]AND[CCC]THEN[DDDD]*/
var countIf = string_count('IF[', str);
var countThen = string_count('THEN[', str);
var countAnd = string_count('AND',str);
var countOr = string_count('OR',str);
if ( countIf != 1 || countThen != 1 || (countAnd && countOr)) {
    show_message("Wrong Input! Please Check and Input Again...");
    return 0;
}
var thenData = string_copy(str,string_pos('THEN[',str)+5, string_length(str) - (string_pos('THEN[',str) + 5));
var thenId = ds_map_find_value(nodeMap,thenData);
if (!thenId) {
    show_message("Wrong Input! Please Check and Input Again...");
    return 0;
}
var firstData = string_copy(str,string_pos('IF[',str)+3, (string_pos(']',str)-4));
var firstId = instance_create(0,0,oNode);
scr_insertNode(firstId,firstData,thenId,NULL);
var preId = firstId;

var tempStr = string_copy(str,string_pos(']',str)+1,string_length(str) - (string_pos(']',str)+1));

if (countAnd) {
    thenId.logic = AND;
    var countLogic = countAnd;
} else if (countOr) {
    thenId.logic = OR;
    var countLogic = countOr;
} else {
    thenId.logic = 0;
    var countLogic = 0;
}

for (var i = 1;i <= countLogic;i++) {
    var dataBegin = string_pos('[',tempStr)+1;
    var dataEnd = string_pos(']',tempStr)-1;
    var dataLength = dataEnd - dataBegin + 1;
    var thisData = string_copy(tempStr,dataBegin,dataLength);
    var thisId = instance_create(0,0,oNode);
    if (preId != thisId) {
        scr_insertNode(thisId,thisData,thenId,preId);
        preId = thisId;
    } else {
        scr_insertNode(thisId,thisData,thenId,NULL);
    }
    tempStr = string_copy(tempStr, dataEnd+2, string_length(tempStr) - (dataEnd+2) + 1);
}

return 1;
