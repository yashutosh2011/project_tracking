﻿(function () {
    var UserStoriesController = function ($scope, $http) {
        var userStories = function (serviceResp) {
            $scope.Stories = serviceResp.data;
        };
        var errorDetails = function (serviceResp) {
            $scope.Error = "Something went wrong";
        };
        $http.get("http://localhost:50651/api/ptuserstories/1").then(userStories, errorDetails);
        $scope.Title = "User Stories Page";
    };
    app.controller("UserStoriesController",UserStoriesController);
}());