<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectTaskDetails.aspx.cs" Inherits="ProjectTrackingDB.Tasks.ProjectTaskDetails" %>
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
        <tr class="success" ng-repeat="tasks in Tasks">
            <td>{{tasks.projectTaskID}}
            </td>
            <td>{{tasks.taskStartDate|date:'short'}}
            </td>
            <td>{{tasks.taskEndDate|date:'short'}}
            </td>
            <td>{{tasks.taskCompletion}}&nbsp;%
            </td>
        </tr>
    </tbody>
</table>
