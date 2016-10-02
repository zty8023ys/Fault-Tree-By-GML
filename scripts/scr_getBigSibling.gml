/// scr_getBigSibling(id);
var this = argument[0];
var bigSibling = 0;
while (this.preSibling != NULL) {
    bigSibling++;
    this = this.preSibling;
}
return bigSibling;
