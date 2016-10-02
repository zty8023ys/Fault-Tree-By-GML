///scr_insertNode(node, data, parent, preSibling);
node = argument[0];
node.data = argument[1];
node.parent = argument[2];
if (node.parent != NULL ) {
    node.rank = node.parent.rank+1;
    if (node.parent.firstChild == NULL) {
        node.parent.firstChild = node;
    }
} else {
    node.rank = 1;
}
if (node.rank > maxRank) {
    maxRank = node.rank; 
}
node.preSibling = argument[3];
if (node.preSibling != NULL) {
    node.preSibling.nextSibling = node;
}
with(oNode) {
    sibling = scr_getBigSibling(id)+ scr_getSmallSibling(id) + 1;
}
ds_map_add(nodeMap,node.data,node);

