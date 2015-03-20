# -*- coding: utf-8 -*-
<%inherit file="../layout.mako"/>
<h1>Pin Code</h1>
<form action="${request.route_url('pin')}" method="post">
    <label form="main">Enter your pin code:</label>
    <input type="password" id="main" class="pin" name="pin" value="" readonly="readonly" />

    <%include file="../keypad.mako" args="section='pin'" />

    <a class="toggle" href="#" onclick="toggleVisibility('test'); return false;" title="Test data is valid for default database">Use test data</a>
    <div id="test" style="display: none">
        <table align="center">
            <tr>
                <td colspan="3">Valid combinations</td>
            </tr>
            <tr>
                <td><input type="button" value="a" onclick="test('1111');" /></td>
                <td><input type="button" value="b" onclick="test('2222');" /></td>
                <td><input type="button" value="c" onclick="test('3333');" /></td>
            </tr>
            <tr>
                <td colspan="3">Invalid combinations</td>
            </tr>
            <tr>
                <td><input type="button" value="a" onclick="test('1234');" /></td>
                <td><input type="button" value="b" onclick="test('0129');" /></td>
                <td><input type="button" value="c" onclick="test('acbd');" /></td>
            </tr>
        </table>
    </div>
</form>
