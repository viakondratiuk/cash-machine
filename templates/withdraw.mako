# -*- coding: utf-8 -*-
<%inherit file="layout.mako"/>
<h1>Withdraw</h1>
<form action="${request.route_url('withdraw')}" method="post">
    <label form="main">Enter sum to withdraw:</label>
    <input type="text" id="main" class="withdraw" name="withdraw" value="" readonly="readonly" />
    <%include file="keypad.mako" args="section='withdraw'" />
</form>
</html>
