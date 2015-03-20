# -*- coding: utf-8 -*- 
<%inherit file="../layout.mako"/>
<h1>Credit Card</h1>
<form action="${request.route_url('cc_number')}" method="post">
    <label form="main">Enter your credit card number:</label>
    <input type="text" id="main" class="cc_number" name="cc_number" value="" readonly="readonly" />

    <%include file="../keypad.mako" args="section='cc_number'" />

    <a class="toggle" href="#" onclick="toggleVisibility('test'); return false;" title="Test data is valid for default database">Use test data</a>
    <div id="test" style="display: none">
        <table align="center">
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
    </div>
</form>


