<%page args="valid,invalid" />

<a class="toggle" href="#" onclick="toggleVisibility('test'); return false;" title="Test data is valid for default database">Use test data</a>
<div id="test" style="display: none">
    <table align="center">
        <tr>
            <td colspan="3">Valid combinations</td>
        </tr>
        <tr>
            <td><input type="button" value="a" onclick="test('${valid[0]}');" /></td>
            <td><input type="button" value="b" onclick="test('${valid[1]}');" /></td>
            <td><input type="button" value="c" onclick="test('${valid[2]}');" /></td>
        </tr>
        <tr>
            <td colspan="3">Invalid combinations</td>
        </tr>
        <tr>
            <td><input type="button" value="a" onclick="test('${invalid[0]}');" /></td>
            <td><input type="button" value="b" onclick="test('${invalid[1]}');" /></td>
            <td><input type="button" value="c" onclick="test('${invalid[2]}');" /></td>
        </tr>
    </table>
</div>