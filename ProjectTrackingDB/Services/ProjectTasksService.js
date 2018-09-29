(function () {
    var projectTaskService = function ($http) {
        var projectTasks = function () {
            return $http.get("http://localhost:50651/api/ptprojecttasks").
                then(function (serviceResp) { return serviceResp.data });
        };
        return {
            projectTasks:projectTasks
        };
    };
    var module = angular.module("ProjectTrackingModule");
    module.factory("projectTaskService", ["$http", projectTaskService]);
}());