# -*- coding: utf-8 -*-
<%inherit file="layout.mako"/>
<h1>Report All</h1>
% if operations:
    <table class="info" align="center">
        <tr>
            <td>Credit card number</td>
            <td>Date</td>
            <td>Operation Code</td>
            <td>Total</td>
        </tr>
    % for operation in operations:
        <tr>
            <td>${operation['cc_number'][:4]+'-'+operation['cc_number'][4:8]+'-'+operation['cc_number'][8:12]+'-'+operation['cc_number'][12:]}</td>
            <td>${operation['datetime']}</td>
            <td>${operation['operation_code']}</td>
            <td>${operation['total']}</td>
        </tr>
    % endfor
    </table>
% else:
  <p>There are no operations</p>
% endif
