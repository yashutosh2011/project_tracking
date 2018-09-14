(function () {
    var ProjectsTasksController = function ($scope,$http) {
        var ProjectTasks = function (serviceResp) {
            $scope.Tasks = serviceResp.data;
        };
        var errorDetails = function (serviceResp) {
            $scope.Error = "Something went wrong !! ";
        };
        $http.get("http://localhost:50651/api/ptprojecttasks/2").then(ProjectTasks, errorDetails);
        $scope.Title = "Project Task Page";
    };
    app.controller('ProjectsTasksController', ProjectsTasksController);
}());