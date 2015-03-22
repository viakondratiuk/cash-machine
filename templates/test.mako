<%page args="valid,invalid" />

<a class="toggle" href="#" onclick="toggleVisibility('test'); return false;" title="Test data is valid for default database">Use test data</a>
<div id="test" style="display: none">
    <table align="center">
        <tr>
            <td colspan="3">Valid combinations</td>
        </tr>
        <tr>
            <td><input type="button" value="a" title="${valid[0]}" onclick="test('${valid[0]}');" /></td>
            <td><input type="button" value="b" title="${valid[1]}" onclick="test('${valid[1]}');" /></td>
            <td><input type="button" value="c" title="${valid[2]}" onclick="test('${valid[2]}');" /></td>
        </tr>
        <tr>
            <td colspan="3">Invalid combinations</td>
        </tr>
        <tr>
            <td><input type="button" value="a" title="${invalid[0]}" onclick="test('${invalid[0]}');" /></td>
            <td><input type="button" value="b" title="${invalid[1]}" onclick="test('${invalid[1]}');" /></td>
            <td><input type="button" value="c" title="${invalid[2]}" onclick="test('${invalid[2]}');" /></td>
        </tr>
    </table>
</div>