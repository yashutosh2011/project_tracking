<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerCommentDetails.aspx.cs" Inherits="ProjectTrackingDB.ProjectManagement.ManagerCommentDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="ProjectTrackingModule">
<head runat="server">
    <title>Manager Comment Details</title>
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
    <script src="../Services/ManagerCommentsService.js"></script>
    <script src="../Controllers/ManagerCommentsController.js"></script>
</head>
<body>
    <form id="form1" runat="server" ng-controller="ManagerCommentsController">
        <div>
            <h1>{{Title}}</h1>
            <table class="table table-striped table-hover">
                <thead>
                    <tr class="info">
                        <td>Comment ID
                        </td>
                        <td>Comments
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="success" ng-repeat="comments in Comments">
                        <td>{{comments.managerCommentID}}
                        </td>
                        <td>{{comments.comments}}
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
