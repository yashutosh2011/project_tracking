<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectTaskDetails.aspx.cs" Inherits="ProjectTrackingDB.Tasks.ProjectTaskDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="ProjectTrackingModule">
<head runat="server">
    <title>Project Task Details</title>
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
    <script src="../Controllers/ProjectTasksController.js"></script>
</head>
<body>
    <form id="form1" runat="server" ng-controller="ProjectsTasksController">
        <div>
            <h1>{{Title}}</h1>
            <table class="table table-striped table-hover">
                <thead>
                    <tr class="info">
                        <td>Project Task ID
                        </td>
                        <td>Start Date
                        </td>
                        <td>End Date
                        </td>
                        <td>Task Completion (%)
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="success">
                        <td>{{Tasks.projectTaskID}}
                        </td>
                        <td>{{Tasks.taskStartDate|date:'short'}}
                        </td>
                        <td>{{Tasks.taskEndDate|date:'short'}}
                        </td>
                        <td>{{Tasks.taskCompletion}}&nbsp;%
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
