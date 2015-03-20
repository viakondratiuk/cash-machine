# -*- coding: utf-8 -*- 
<%inherit file="layout.mako"/>
<h1>Operations</h1>
<table align="center">
    <tr>
        <td><input type="button" value="Balance" onclick="location.href='/balance';" /></td>
        <td><input type="button" value="Withdraw" onclick="location.href='/withdraw';" /></td>
        <td><input id="exit" type="button" value="Exit" title="Exit" onclick="location.href='/';" /></td>
    </tr>
</table>
