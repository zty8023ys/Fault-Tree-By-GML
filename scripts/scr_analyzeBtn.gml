/// scr_analyzeBtn();
if (image_index == 1) {
    if (global.page == 1) {
        with(oControl) {
            cutSet = 0;
            tempCutSet = 0;
            tempCutSet[0,0] = 0;
            if (script7()) {
            // 纵向查重
                var i = 0;
                var height = array_height_2d(cutSet);
                while (i < height) {
                    var j = 0;
                    var length = array_length_2d(cutSet,i);
                    while (j < length - 1) {
                        if (cutSet[i,j] != 0) {
                            var k = j+1;
                            while (k < length) {
                                    //show_message(string(cutSet[i,j])+"."+string(cutSet[i,k]));
                                if (cutSet[i,j].data == cutSet[i,k].data) {
                                    cutSet[i,k] = 0;
                                }
                                k++;
                            }
                        }
                        j++;
                    }
                    i++;
                }
                // 查重后移入临时数组
                var a = 0;
                var height = array_height_2d(cutSet);;
                while (a < height) {
                    var b = 0;
                    var c = 0;
                    var length = array_length_2d(cutSet,a);
                    while (b < length) {
                        if (cutSet[a,b] != 0) {
                            tempCutSet[a,c] = cutSet[a,b];
                            c++;
                        }
                        b++;
                    }
                    a++;
                }
                // 横向查重
                minCutSet = 0;
                minCutSet[0,0] = 0;
                minPathSet = 0;
                minPathSet[0,0] = 0;
                var i = 0;
                var height = array_height_2d(tempCutSet);
                while (i < height-1) {
                    var iFlag = 0;
                    if (tempCutSet[i,0] !=0 ){ 
                        var length = array_length_2d(tempCutSet,i);
                        var k = i+1;
                        while (!iFlag && k < height) {
                        var kFlag = 0;
                            if (tempCutSet[k,0] !=0){
                                var klength = array_length_2d(tempCutSet,k);
                                if (length <= klength) {
                                    var j = 0;
                                    while (!kFlag&&!iFlag && j < length) {
                                        var l = 0;
                                        var lFlag = 0;
                                        while (!kFlag && !lFlag && l < klength) {
                                            if (tempCutSet[i,j].data == tempCutSet[k,l].data) {
                                                lFlag = 1;
                                            } else {
                                                l++;
                                            }
                                        }
                                        if (l == klength) {
                                            kFlag = 1;
                                        } else {
                                            j++;
                                        }
                                    }
                                    if (j == length) {
                                        var m = 0;
                                        while (m < klength) {
                                            tempCutSet[k,m] = 0;
                                            m++;
                                        }
                                    }
                                } else {
                                    var j = 0;
                                    while (!kFlag && !iFlag && j < klength) {
                                        var l = 0;
                                        var lFlag = 0;
                                        while (!lFlag && l < length) {
                                            if (tempCutSet[i,l].data == tempCutSet[k,j].data) {
                                                lFlag = 1;
                                            } else {
                                                l++;
                                            }
                                        }
                                        if (l == length) {
                                            kFlag = 1;
                                        } else {
                                            j++;
                                        }
                                    }
                                    if (j == klength) {
                                        var m = 0;
                                        while (m < length) {
                                            tempCutSet[i,m] = 0;
                                            m++;
                                        }
                                        iFlag = 1;
                                    }
                                }
                            }
                            k++;
                        }
                    }
                    i++;
                }
                // 查重后移入minCutSet
                var a = 0;
                var d = 0;
                var height = array_height_2d(tempCutSet);
                while (a < height) {
                    if (tempCutSet[a,0] != 0) {
                        var b = 0;
                        var length = array_length_2d(tempCutSet,a);
                        while (b < length) {
                            minCutSet[d,b] = tempCutSet[a,b];
                            switch(tempCutSet[a,b].logic) {
                                case AND:
                                    tempCutSet[a,b].logic = OR;
                                break;
                                case OR:
                                    tempCutSet[a,b].logic = AND;
                                break;
                            }
                            minPathSet[d,b] = tempCutSet[a,b].data;
                            switch(tempCutSet[a,b].logic) {
                                case AND:
                                    tempCutSet[a,b].logic = OR;
                                break;
                                case OR:
                                    tempCutSet[a,b].logic = AND;
                                break;
                            }
                            b++;
                        }
                        d++;
                    }
                    a++;
                }
            }
        }
        global.page = 2;
    } else if (global.page == 2) {
        global.page = 1;
    }
    image_index = 0; 
}

