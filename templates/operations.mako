# -*- coding: utf-8 -*- 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Cash Machine</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <link rel="stylesheet" href="/static/style.css">
    <script type="text/javascript">
        function input(e) {
            var p = document.getElementById("pin_code");
            var len = p.value.length;
            if (len < 4) {
                p.value += e.value;
            }
        }

        function clearInput() {
            var cc = document.getElementById("pin_code");
            cc.value = '';
        }

        function test(v) {
            document.getElementById("pin_code").value = v;
        }
    </script>
</head>
<body>
    <div id="page">
        <h1>Operations</h1>
        <table align="center">
            <tr>
                <td><input type="button" value="Balance" onclick="location.href='balance';" /></td>
                <td><input type="button" value="Withdraw" onclick="location.href='withdraw';" /></td>
                <td><input id="exit" type="button" value="Exit" title="Exit" onclick="location.href='/'" /></td>
            </tr>
        </table>
    </div>
</body>
</html>
