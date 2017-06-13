

$("#save").click(function() {
    $("#c").get(0).toBlob(function(blob){
        saveAs(blob, "chart.png");
    });
});


canvas.on('mouse:out', function(e) {
    var p = e.target;
    p.line1 && p.line1.set({
        'x2': p.left,
        'y2': p.top
    });
    p.line2 && p.line2.set({
        'x1': p.left,
        'y1': p.top
    });
    canvas.renderAll();
    canvas.renderTop();
});

// Comienza el circle0

$("#r0").click(function() {
    circle0.setLeft(Number(circle0.getLeft()) + 20);
    canvas.renderAll();
    document.getElementById("texth0").value = circle0.getLeft();
    chartC();
});

$("#l0").click(function() {
    circle0.setLeft(Number(circle0.getLeft()) - 20);
    canvas.renderAll();
    document.getElementById("texth0").value = circle0.getLeft();
    chartC();
});

$("#u0").click(function() {
    circle0.setTop(Number(circle0.getTop()) - 20);
    canvas.renderAll();
    document.getElementById("textv0").value = circle0.getTop();
    chartC();
});

$("#d0").click(function() {
    circle0.setTop(Number(circle0.getTop()) + 20);
    canvas.renderAll();
    document.getElementById("textv0").value = circle0.getTop();
    chartC();
});

// Comienza el circle1

$("#r1").click(function() {
    circle1.setLeft(Number(circle1.getLeft()) + 20);
    canvas.renderAll();
    document.getElementById("texth1").value = circle1.getLeft();
    chartC();
});

$("#l1").click(function() {
    circle1.setLeft(Number(circle1.getLeft()) - 20);
    canvas.renderAll();
    document.getElementById("texth1").value = circle1.getLeft();
    chartC();
});

$("#u1").click(function() {
    circle1.setTop(Number(circle1.getTop()) - 20);
    canvas.renderAll();
    document.getElementById("textv1").value = circle1.getTop();
    chartC();
});

$("#d1").click(function() {
    circle1.setTop(Number(circle1.getTop()) + 20);
    canvas.renderAll();
    document.getElementById("textv1").value = circle1.getTop();
    chartC();
});

// Función para calculo de ecuación de la recta

function chartC() {
    var x1 = Number(circle0.getLeft());
    var y1 = Number(circle0.getTop());

    var x2 = Number(circle1.getLeft());
    var y2 = Number(circle1.getTop());

    var xf = x2 - x1;
    var yf = y2 - y1;

    document.getElementById("xf").value = xf;
    document.getElementById("yf").value = yf;
}
