<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mini.css/3.0.1/mini-default.min.css">
    <style>
        .container > div > div {
            margin: auto;
        }

        form .row div {
            display: flex;
            align-items: center;
        }

        form > div {
            display: flex;
            justify-content: flex-end;
        }

        form input:not([type=submit]) {
            width: 100%;
        }

        #messages {
            text-align: center;
            font-weight: bold;
        }

        #error {
            color: #e34b4b;
        }

        #logout {
            color: #479341;
        }
    </style>
    <title>Login Page</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-4 col-lg-3">
            <form action="login" method="post">
                <fieldset>
                    <legend>login</legend>
                    <div class="row">
                        <div class="col-sm-12 col-md-5 col-lg-4"><label for="username">user</label></div>
                        <div class="col-sm-12 col-md"><input type="text" name="username" id="username" value="${usernameInput}"/></div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-5 col-lg-4"><label for="password">password</label></div>
                        <div class="col-sm-12 col-md"><input type="password" id="password" name="password"></div>
                    </div>
                </fieldset>
                <div class="row">
                    <input class="tertiary" type="submit">
                </div>
            </form>
            <p id="messages"><span id="error">${wrongUser}${wrongPassword}</span><span id="logout">${logoutMessage}</span></p>
        </div>
    </div>
</div>
</body>
</html>