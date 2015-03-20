# -*- coding: utf-8 -*-
<%inherit file="../layout.mako"/>
<h1>Pin Code</h1>
<form action="${request.route_url('pin')}" method="post">
    <label form="main">Enter your pin code:</label>
    <input type="password" id="main" class="pin" name="pin" value="" readonly="readonly" />

    <%include file="../keypad.mako" args="section='pin'" />
    <%include file="../test.mako" args="valid=['1111', '2222', '3333'],invalid=['1234', '0129', 'abcd']" />
</form>
