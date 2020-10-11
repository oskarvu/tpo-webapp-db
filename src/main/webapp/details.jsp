<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mini.css/3.0.1/mini-default.min.css">
    <style>
        #header {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        #resources a {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
    </style>
    <title>${resource.name} details</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-8 col-md-offset-2">
            <div id="header" class="row">
                <div>
                    <h2>${resource.name} <small>details</small></h2>
                </div>
                <div>
                    <a href="logout" class="button inverse">logout</a>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <hr>
                </div>
            </div>
            <div class="row">
                <p>
                    ${resource.content}
                </p>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <hr>
                </div>
            </div>
            <div class="row">
                <div>
                    <a href="list" class="button inverse">&#60; back</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>