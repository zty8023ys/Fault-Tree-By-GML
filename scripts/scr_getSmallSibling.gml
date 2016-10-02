/// scr_getSmallSibling(id);
var this = argument[0];
var smallSibling = 0;

while (this.nextSibling != NULL) {
    smallSibling++;
    this = this.nextSibling;
}
return smallSibling;
