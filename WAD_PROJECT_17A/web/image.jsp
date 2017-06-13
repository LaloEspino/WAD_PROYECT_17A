<%@taglib uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
    <body>
    
    <canvas id="c" height="480" width="480"></canvas>

    <s:textfield id="r0" type="button" value="R" />
    <s:textfield id="l0" type="button" value="L" />
    <s:textfield id="texth0" type="number" readonly="readonly" />


    <!--<input id="r1" type="button" class="button-add" />-->
    <s:textfield id="r1" type="button" value='R' />
    <s:textfield id="l1" type="button" value="L" />

    <s:textfield id="texth1" type="number" readonly="readonly" />
    x: <s:textfield id="xf" type="number" readonly="readonly" />
    <br />

    <s:textfield id="u0" type="button" value="U" />
    <s:textfield id="d0" type="button" value="D" />
    <s:textfield id="textv0" type="number" readonly="readonly" />
    <s:textfield id="u1" type="button" value="U" />
    <s:textfield id="d1" type="button" value="D" />
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

        var line = makeLine([100, 100, 240, 200]);

        canvas.add(line);

        canvas.add(
            makeCircle0(line.get('x1'), line.get('y1'), null, line),
            makeCircle1(line.get('x2'), line.get('y2'), line, null)
        );

        start();

    </script>
    </body>
</html>