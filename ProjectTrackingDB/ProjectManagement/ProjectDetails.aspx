<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="ProjectTrackingDB.ProjectManagement.ProjectDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="ProjectTrackingModule">
<head runat="server">
    <title>Project Details</title>
    <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../CSS/amelia.bootstrap.min.css" rel="stylesheet" />
    <link href="../CSS/Site.css" rel="stylesheet" />
    <script src="../Scripts/angular.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/app.js"></script>
    <script src="../Controllers/ProjectsController.js"></script>
</head>
<body>
    <form id="form1" runat="server" ng-controller="ProjectsController">
        <div>
            <h1>{{Title}}</h1>
            <table class="table table-striped table-hover">
                <thead>
                    <tr class="info">
                        <td>Project ID
                        </td>
                        <td>Project Name
                        </td>
                        <td>Start Date
                        </td>
                        <td>End Date
                        </td>
                        <td>Client Name
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="success" ng-repeat="Project in Projects">
                        <td>{{Project.projectID}}
                        </td>
                        <td>{{Project.projectName}}
                        </td>
                        <td>{{Project.startDate|date:'medium'}}
                        </td>
                        <td>{{Project.endDate|date:'short'}}
                        </td>
                        <td>{{Project.clientName}}
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
