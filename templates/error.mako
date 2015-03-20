# -*- coding: utf-8 -*-
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Cash Machine</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <link rel="stylesheet" href="/static/style.css">
</head>
<body>
    <div id="page">
        % if request.session.peek_flash():
            <% flash = request.session.pop_flash() %>
            % for message in flash:
                <p class="error">${message}</p>
            % endfor
        % endif
        <input type="button" value="Back" onclick="history.back();" />
    </div>
</body>
</html>
