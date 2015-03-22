# -*- coding: utf-8 -*-
<%inherit file="layout.mako"/>
<%! import datetime %>
<h1>Balance</h1>
<table class="info" align="center">
    <tr>
        <td>Credit card number:</td>
        <td>${request.session['card']['cc_dashed']}</td>
    </tr>
    <tr>
        <td>Date:</td>
        <td>${str(datetime.datetime.now().strftime('%d %b %Y %H:%M:%S'))}</td>
    </tr>
    % if 'withdraw' in request.session['card']:
        <tr>
            <td>Withdraw:</td>
            <td>${request.session['card']['withdraw']}</td>
        </tr>
    % endif
    <tr>
        <td>Balance:</td>
        <td>${request.session['card']['balance']}</td>
    </tr>
</table>
<table align="center">
    <tr>
        <td width="50"><input type="button" value="Back" onclick="location.href='/withdraw';" /></td>
        <td width="50"><input type="button" value="Exit" onclick="location.href='/';" /></td>
    </tr>
</table>

