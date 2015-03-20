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
            var len = cc.value.length;
            if (len <= 18) {
                cc.value += e.value;
                origLen = cc.value.replace(/-/g, "").length
                if (origLen % 4 == 0 && Math.floor(origLen / 4) <= 3) {
                    cc.value += "-"
                }
            }
        }

        function clearInput() {
            var cc = document.getElementById("credit_card");
            cc.value = '';
        }

        function test(v) {
            document.getElementById("credit_card").value = v;
        }
    </script>
</head>
<body>
    <div id="page">
        <h1>Withdraw</h1>
        <form action="/withdraw" method="post">
            <label form="withdraw">Enter sum to withdraw:</label>
            <input type="text" id="withdraw" class="" name="withdraw" value="" readonly="readonly" />
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
                    <td><input id="clear" type="button" value="C" title="Clear" onclick="clearInput();" /></td>
                    <td><input id="btn9" type="button" value="9" onclick="input(this);" /></td>
                    <td><input id="ok" type="submit" title="Enter" value=">" /></td>
                </tr>
                <tr>
                    <td colspan="3"><input id="exit" type="button" value="Exit" title="Exit" onclick="location.href='/'" /></td>
                </tr>
                <tr>
                    <td colspan="3">Valid combinations</td>
                </tr>
                <tr>
                    <td><input type="button" value="a" onclick="test('0000-0000-0000-0000');" /></td>
                    <td><input type="button" value="b" onclick="test('1111-1111-1111-1111');" /></td>
                    <td><input type="button" value="c" onclick="test('2222-2222-2222-2222');" /></td>
                </tr>
                <tr>
                    <td colspan="3">Invalid combinations</td>
                </tr>
                <tr>
                    <td><input type="button" value="a" onclick="test('1234-1234-1234-1234');" /></td>
                    <td><input type="button" value="b" onclick="test('4567-8901-2345-6789');" /></td>
                    <td><input type="button" value="c" onclick="test('acbdmmm');" /></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
