<%page args="section" />
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
    % if section in ('pin', 'withdraw'):
        <tr>
            <td colspan="3"><input id="exit" type="button" value="Exit" title="Exit" onclick="location.href='/'" /></td>
        </tr>
    % endif
</table>