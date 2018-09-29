﻿<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="ProjectTrackingDB.ProjectManagement.ProjectDetails" %>--%>

<h1>{{Title}}</h1>
<hr />
<a href="NewProject" class="btn btn-primary">Add New Project</a>
<hr />
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
             <td>
                Modify Project
            </td>
            <td>
                Delete Project
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
            <td><input type="button" value="Modify" class="btn btn-info" />
            </td>
            <td><input type="button" value="Delete" class="btn btn-info" />
            </td>
        </tr>
    </tbody>
</table>
