(function () {
    var projectsService = function ($http,$log) {
        var projects = function () {
            return $http.get("http://localhost:50651/api/ptprojects").
                then(function (serviceResp) { return serviceResp.data });
        };
        var insertProject = function (project) {
            return $http.post("http://localhost:50651/api/ptprojects",project).
            then(function () {
                $log.info("Insert Successfull.");
                return;
            })
        };
        return {
            projects: projects,
            insertProject:insertProject
        };
    };
        var module = angular.module("ProjectTrackingModule");
        module.factory("projectsService", ["$http","$log", projectsService]);
}());