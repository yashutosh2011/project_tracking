(function () {
    var ProjectsController = function ($scope,$http) {
        var Projects = function (serviceResp) {
            $scope.Projects = serviceResp.data;
        };
        var errorDetails = function (serviceResp) {
            $scope.Error = "Something went wrong";
        };
        $http.get("http://localhost:50651/api/ptprojects").then(Projects, errorDetails);
        $scope.Title = "Project Details Page";
    };
    app.controller('ProjectsController', ProjectsController);
}());