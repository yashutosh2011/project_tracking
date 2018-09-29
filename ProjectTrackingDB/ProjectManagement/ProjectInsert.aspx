﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectInsert.aspx.cs" Inherits="ProjectTrackingDB.ProjectManagement.ProjectInsert" %>

<form class="form-horizontal" name="insertEmployeeForm">
    <fieldset>
        <legend>Insert New Project</legend>
        <div class="form-group">
            <label for="projectName" class="col-lg-2 control-label">ProjectName</label>
            <div class="col-lg-10">
                <input type="text" required class="form-control"
                    ng-model="project.projectName" placeholder="Project Name">
            </div>
        </div>
        <div class="form-group">
            <label for="startDate" class="col-lg-2 control-label">Start Date</label>
            <div class="col-lg-10">
                <input type="date" required class="form-control" ng-model="project.startDate">
            </div>
        </div>
        <div class="form-group">
            <label for="endDate" class="col-lg-2 control-label">End Date</label>
            <div class="col-lg-10">
                <input type="date" required class="form-control" ng-model="project.endDate">
            </div>
        </div>
        <div class="form-group">
            <label for="clientName" class="col-lg-2 control-label">Client Name</label>
            <div class="col-lg-10">
                <input type="text" required class="form-control" ng-model="project.clientName" placeholder="Client Name">
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
                <a href="Projects" class="btn btn-default">Cancel</a>
                <a href="Projects" ng-click="insertProject(project)" class="btn btn-primary">Insert Employee</a>
            </div>
        </div>
    </fieldset>
</form>

