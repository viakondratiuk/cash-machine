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
            var cc = document.getElementById("credit_card");
            var l = cc.value.length;
            if (l < 19) {
                cc.value += + e.value;
            }
            if (cc.value.replace(/-/g, "").length % 4 == 0 && l < 18) {
                cc.value += "-";
            }
        }

        function clearInput() {
            var cc = document.getElementById("credit_card");
            cc.value = '';
        }
    </script>
</head>
<body>
    <div id="cc">
        <form action="vcard" method="post">
            <label form="credit_card">Enter your Credit Card number</label>
            <input type="text" id="credit_card" name="credit_card" value="" readonly="readonly" />
            <table align="center">
                <tr>
                    <td><input id="btn0" type="button" value="0" onclick="input(this);" /></td>
                    <td><input id="btn1" type="button" value="1" onclick="input(this);" /></td>
                    <td><input id="btn2" type="button" value="2" onclick="input(this);" /></td>
                </tr>
                <tr>
                    <td><input id="btn3" type="button" value="3" onclick="input(this);" /></td>
                    <td><input id="btn4" type="button" value="4" onclick="input(this);" /></td>
                    <td><input id="btn5" type="button" value="5" onclick="input(this);" /></td>
                </tr>
                <tr>
                    <td><input id="btn6" type="button" value="6" onclick="input(this);" /></td>
                    <td><input id="btn7" type="button" value="7" onclick="input(this);" /></td>
                    <td><input id="btn8" type="button" value="8" onclick="input(this);" /></td>
                </tr>
                <tr>
                    <td><input id="clear" type="button" value="C" onclick="clearInput();" /></td>
                    <td><input id="btn9" type="button" value="9" onclick="input(this);" /></td>
                    <td><input id="ok" type="submit" value=">" /></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
