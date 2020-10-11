<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        #logout-button {
            float: right;
        }

        #resources a {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .icon-link {
            float: right;
        }
    </style>
    <title>${user.firstName}'s resources</title>
</head>
<body>
<div class="container">
    <div id="resources" class="row">
        <div class="col-sm-12 col-md-8 col-md-offset-2">
            <div id="header" class="row">
                <div>
                    <h2>${user.firstName} ${user.lastName} <small>resources</small></h2>
                </div>
                <div>
                    <a href="logout" id="logout-button" class="button inverse">logout</a>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <hr>
                </div>
            </div>
            <div class="row">
                <c:forEach var="entry" items="${user.resourceMap}">
                    <div class="card small">
                        <a href="details?id=${entry.value.id}" class="button small primary">${entry.value.name} <span
                                class="icon-link inverse"></span></a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</body>
</html>