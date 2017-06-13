<%@taglib uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create</title>
    <script src="js/fabric.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/FileSaver.min.js"></script>
    <script src="js/canvas-to-blob.js"></script>
    <script src="js/plano.js"></script>
    <script src="js/start.js"></script>
    <script defer type="text/javascript" src="js/init.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
        
    <h1>Chart <s:property value="chart.name" /> </h1>
        
    <canvas id="c" height="480" width="480"></canvas>

    <s:textfield id="texth0" type="number" readonly="readonly" />



    <s:textfield id="texth1" type="number" readonly="readonly"  />
    x: <s:textfield id="xf" type="number" readonly="readonly" />
    <br />

    <s:textfield id="textv0" type="number" readonly="readonly" />
    <s:textfield id="textv1" type="number" readonly="readonly" />
    y: <s:textfield id="yf" type="number" readonly="readonly" />
    
    
    
    <br />
    <br />
    <br />

    <s:textfield id="save" type="button" value="Save as Image" />
    

    <script>
        var canvas = new fabric.Canvas('c');
        planoCartesiano();
        fabric.Object.prototype.originX = fabric.Object.prototype.originY = 'center';

        var circle0;

        function makeCircle0(left, top, line1, line2) {
            circle0 = new fabric.Circle({
                left: left,
                top: top,
                strokeWidth: 5,
                radius: 12,
                fill: '#fff',
                stroke: '#666',
                selectable: false
            });
            circle0.hasControls = circle0.hasBorders = false;

            circle0.line1 = line1;
            circle0.line2 = line2;

            return circle0;
        }

        var circle1;

        function makeCircle1(left, top, line1, line2) {
            circle1 = new fabric.Circle({
                left: left,
                top: top,
                strokeWidth: 5,
                radius: 12,
                fill: '#fff',
                stroke: '#666',
                selectable: false
            });
            //circle.hasControls = circle.hasBorders = false;

            circle1.line1 = line1;
            circle1.line2 = line2;

            return circle1;

        }

        function makeLine(coords) {
            return new fabric.Line(coords, {
                fill: 'black',
                stroke: 'black',
                strokeWidth: 5,
                selectable: false
            });
        }

        var line = makeLine([
            ${chart.x1},
            ${chart.x2},
            ${chart.y1},
            ${chart.y2}
                ]);

        canvas.add(line);

        canvas.add(
            makeCircle0(line.get('x1'), line.get('y1'), null, line),
            makeCircle1(line.get('x2'), line.get('y2'), line, null)
        );

        start();

    </script>
</body>
</html>
