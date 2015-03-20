# -*- coding: utf-8 -*- 
<%inherit file="layout.mako"/>
<h1>Credit Card</h1>
<form action="${request.route_url('credit_card')}" method="post">
    <label form="main">Enter your credit card number:</label>
    <input type="text" id="main" class="" name="credit_card" value="" readonly="readonly" />
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
    </table>
    <a class="toggle" href="#" onclick="toggleVisibility('test'); return false;">Use test data</a>
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


