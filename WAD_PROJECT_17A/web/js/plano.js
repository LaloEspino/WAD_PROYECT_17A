function planoCartesiano (){

    var ejey = new fabric.Line([240, 0, 240, 800], {stroke: 'black', selectable: false});
    var ejex = new fabric.Line([0, 200, 1000, 200], {stroke: 'black', selectable: false});

    var x1 = new fabric.Line([60, 200, 60, 220], {stroke: 'black', selectable: false});
    var x2 = new fabric.Line([80, 200, 80, 220], {stroke: 'black', selectable: false});
    var x3 = new fabric.Line([100, 200, 100, 220], {stroke: 'black', selectable: false});
    var x4 = new fabric.Line([120, 200, 120, 220], {stroke: 'black', selectable: false});
    var x5 = new fabric.Line([140, 200, 140, 220], {stroke: 'black', selectable: false});
    var x6 = new fabric.Line([160, 200, 160, 220], {stroke: 'black', selectable: false});
    var x7 = new fabric.Line([180, 200, 180, 220], {stroke: 'black', selectable: false});
    var x8 = new fabric.Line([200, 200, 200, 220], {stroke: 'black', selectable: false});
    var x9 = new fabric.Line([220, 200, 220, 220], {stroke: 'black', selectable: false});
    var x10 = new fabric.Line([240, 200, 240, 220], {stroke: 'black', selectable: false});
    var x11 = new fabric.Line([260, 200, 260, 220], {stroke: 'black', selectable: false});
    var x12 = new fabric.Line([280, 200, 280, 220], {stroke: 'black', selectable: false});
    var x13 = new fabric.Line([300, 200, 300, 220], {stroke: 'black', selectable: false});
    var x14 = new fabric.Line([320, 200, 320, 220], {stroke: 'black', selectable: false});
    var x15 = new fabric.Line([340, 200, 340, 220], {stroke: 'black', selectable: false});
    var x16 = new fabric.Line([360, 200, 360, 220], {stroke: 'black', selectable: false});
    var x17 = new fabric.Line([380, 200, 380, 220], {stroke: 'black', selectable: false});
    var x18 = new fabric.Line([400, 200, 400, 220], {stroke: 'black', selectable: false});
    var x19 = new fabric.Line([420, 200, 420, 220], {stroke: 'black', selectable: false});

    var y1 = new fabric.Line([240, 20, 260, 20], {stroke: 'black', selectable: false});
    var y2 = new fabric.Line([240, 40, 260, 40], {stroke: 'black', selectable: false});
    var y3 = new fabric.Line([240, 60, 260, 60], {stroke: 'black', selectable: false});
    var y4 = new fabric.Line([240, 80, 260, 80], {stroke: 'black', selectable: false});
    var y5 = new fabric.Line([240, 100, 260, 100], {stroke: 'black', selectable: false});
    var y6 = new fabric.Line([240, 120, 260, 120], {stroke: 'black', selectable: false});
    var y7 = new fabric.Line([240, 140, 260, 140], {stroke: 'black', selectable: false});
    var y8 = new fabric.Line([240, 160, 260, 160], {stroke: 'black', selectable: false});
    var y9 = new fabric.Line([240, 180, 260, 180], {stroke: 'black', selectable: false});
    var y10 = new fabric.Line([240, 200, 260, 200], {stroke: 'black', selectable: false});
    var y11 = new fabric.Line([240, 220, 260, 220], {stroke: 'black', selectable: false});
    var y12 = new fabric.Line([240, 240, 260, 240], {stroke: 'black', selectable: false});
    var y13 = new fabric.Line([240, 260, 260, 260], {stroke: 'black', selectable: false});
    var y14 = new fabric.Line([240, 280, 260, 280], {stroke: 'black', selectable: false});
    var y15 = new fabric.Line([240, 300, 260, 300], {stroke: 'black', selectable: false});
    var y16 = new fabric.Line([240, 320, 260, 320], {stroke: 'black', selectable: false});
    var y17 = new fabric.Line([240, 340, 260, 340], {stroke: 'black', selectable: false});
    var y18 = new fabric.Line([240, 360, 260, 360], {stroke: 'black', selectable: false});
    var y19 = new fabric.Line([240, 380, 260, 380], {stroke: 'black', selectable: false});

    canvas.add(ejey, ejex);
    canvas.add(x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19);
    canvas.add(y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16, y17, y18, y19);
}
