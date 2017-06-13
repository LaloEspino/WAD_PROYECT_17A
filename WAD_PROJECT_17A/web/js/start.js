function start() {
    var x1 = Number(circle0.getLeft());
    var y1 = Number(circle0.getTop());
    var x2 = Number(circle1.getLeft());
    var y2 = Number(circle1.getTop());
    var xf = x2 - x1;
    var yf = y2 - y1;
    document.getElementById("texth0").value = circle0.getTop();
    document.getElementById("textv0").value = circle0.getLeft();
    document.getElementById("texth1").value = circle1.getTop();
    document.getElementById("textv1").value = circle1.getLeft();
    document.getElementById("xf").value = xf;
    document.getElementById("yf").value = yf;
}
