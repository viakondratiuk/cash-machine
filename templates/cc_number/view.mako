# -*- coding: utf-8 -*- 
<%inherit file="../layout.mako"/>
<h1>Credit Card</h1>
<form action="${request.route_url('cc_number')}" method="post">
    <label form="main">Enter your credit card number:</label>
    <input type="text" id="main" class="cc_number" name="cc_number" value="" readonly="readonly" />

    <%include file="../keypad.mako" args="section='cc_number'" />

    <%include file="../test.mako"
    args="valid=['0000-0000-0000-0000', '1111-1111-1111-1111', '2222-2222-2222-2222'],invalid=['1234-1234-1234-1234', '1234-1234-12344', 'adasf']" />
</form>


