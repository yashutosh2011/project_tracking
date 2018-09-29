(function () {
    var ProjectsTasksController = function ($scope, projectTaskService) {
        var ProjectTasks = function (data) {
            $scope.Tasks = data;
        };
        var errorDetails = function (serviceResp) {
            $scope.Error = "Something went wrong !! ";
        };
        projectTaskService.projectTasks().then(ProjectTasks, errorDetails);
        $scope.Title = "Project Task Page";
    };
    app.controller('ProjectsTasksController', ["$scope", "projectTaskService", ProjectsTasksController]);
}());