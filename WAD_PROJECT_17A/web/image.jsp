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
    
    <canvas id="c" height="480" width="480"></canvas>
    
    <s:form action="insertc.action">
        
    <s:textfield label="Name" name="name"/>
    <s:textfield label="Group" name="class_"/>

    <s:textfield id="r0" type="button" value="R" />
    <s:textfield id="l0" type="button" value="L" />
    <s:textfield id="texth0" type="number" readonly="readonly" name="x1"/>


    <!--<input id="r1" type="button" class="button-add" />-->
    <s:textfield id="r1" type="button" value='R' />
    <s:textfield id="l1" type="button" value="L" />

    <s:textfield id="texth1" type="number" readonly="readonly" name="x2"/>
    <br />

    <s:textfield id="u0" type="button" value="U" />
    <s:textfield id="d0" type="button" value="D" />
    <s:textfield id="textv0" type="number" readonly="readonly" name="y1"/>
    <s:textfield id="u1" type="button" value="U" />
    <s:textfield id="d1" type="button" value="D" />
    <s:textfield id="textv1" type="number" readonly="readonly" name="y2"/>
    
        <s:textfield label="x" id="xf" type="number" readonly="readonly" />

    <s:textfield label="y" id="yf" type="number" readonly="readonly" />
    
            <s:submit value="Create" />

    <br />
    <br />
    <br />
    
    </s:form>

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
