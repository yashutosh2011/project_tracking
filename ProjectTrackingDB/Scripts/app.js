var app = angular.module('ProjectTrackingModule', ['ngRoute']);
app.config(function ($routeProvider, $locationProvider) {
    $routeProvider
        .when("/Home", {
            templateUrl: "/Home.aspx",
            controller: "HomeController"
        })
        .when("/", {
            templateUrl: "/Home.aspx",
            controller: "HomeController"
        })
        .when("/Projects", {
            templateUrl: "ProjectManagement/ProjectDetails.aspx",
            controller: "ProjectsController"
        })
        .when("/UserStories", {
            templateUrl: "UserStories/UserStoryDetails.aspx",
            controller: "UserStoriesController"
        })
        .when("/Employees", {
            templateUrl: "Employees/EmployeeDetails.aspx",
            controller: "EmployeesController"
        })
        .when("/Tasks", {
            templateUrl: "Tasks/ProjectTaskDetails.aspx",
            controller: "ProjectsTasksController"
        })
        .when("/NewProject", {
            templateUrl: "ProjectManagement/ProjectInsert.aspx",
            controller: "ProjectsController"
        })
    .otherwise({ redirectTo: "/Home" })
    $locationProvider.html5Mode(true);
});