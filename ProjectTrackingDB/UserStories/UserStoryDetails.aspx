<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserStoryDetails.aspx.cs" Inherits="ProjectTrackingDB.UserStories.UserStoryDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="ProjectTrackingModule">
<head runat="server">
    <title>User Story Details</title>
    <script src="../Scripts/jquery-2.1.0.min.js">
    </script>
    <link href="../CSS/amelia.bootstrap.min.css" rel="stylesheet" />
    <link href="../CSS/Site.css" rel="stylesheet" />
    <script src="../Scripts/angular.min.js">
    </script>
    <script src="../Scripts/bootstrap.min.js">
    </script>
    <script src="../Scripts/app.js">
    </script>
    <script src="../Controllers/UserStoriesController.js"></script>
</head>
<body>
    <form id="form1" runat="server" ng-controller="UserStoriesController">
        <div>
            <h1>{{Title}}</h1>
            <table class="table table-striped table-hover">
                <thead>
                    <tr class="info">
                        <td>User Story ID
                        </td>
                        <td>User Story
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="success">
                        <td>{{Stories.userStoryID}}
                        </td>
                        <td>{{Stories.story}}
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
