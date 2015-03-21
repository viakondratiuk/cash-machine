# -*- coding: utf-8 -*- 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Cash Machine</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <link rel="stylesheet" href="/static/style.css">
    <script type="text/javascript" src="/static/functions.js"></script>
</head>
<body>
    <div id="page">
        <p class="center">
            <a class="toggle" href="#" onclick="toggleVisibility('menu'); return false;" title="You can use navigation to test cach machine">Toggle menu</a>
        </p>
        <ul id="menu" style="display: none">
            <li><a href="/">Credit Card</a></li>
            <li><a href="/pin">Pin</a></li>
            <li><a href="/operations">Operations</a></li>
            <li><a href="/balance">Balance</a></li>
            <li><a href="/withdraw">Withdraw</a></li>
            <li><a href="/report">Report</a></li>
            <li><a href="/report-all">Report-All</a></li>
        </ul>
        ${next.body()}
    </div>
</body>
</html>
