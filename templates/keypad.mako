<%page args="section" />
<table align="center">
    <tr>
        <td><input type="button" value="0" onclick="input(this);" /></td>
        <td><input type="button" value="1" onclick="input(this);" /></td>
        <td><input type="button" value="2" onclick="input(this);" /></td>
    </tr>
    <tr>
        <td><input type="button" value="3" onclick="input(this);" /></td>
        <td><input type="button" value="4" onclick="input(this);" /></td>
        <td><input type="button" value="5" onclick="input(this);" /></td>
    </tr>
    <tr>
        <td><input type="button" value="6" onclick="input(this);" /></td>
        <td><input type="button" value="7" onclick="input(this);" /></td>
        <td><input type="button" value="8" onclick="input(this);" /></td>
    </tr>
    <tr>
        <td><input type="button" value="C" title="Clear" onclick="clearInput();" /></td>
        <td><input type="button" value="9" onclick="input(this);" /></td>
        <td><input type="submit" title="Enter" value=">" /></td>
    </tr>
    % if section in ('pin', 'withdraw'):
        <tr>
            <td colspan="3"><input type="button" value="Exit" title="Exit" onclick="location.href='/'" /></td>
        </tr>
    % endif
</table>