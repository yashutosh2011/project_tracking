(function () {
   var ProjectsController = function ($scope, projectsService,$log) {
        var Projects = function (data) {
            $scope.Projects = data;
        };
        var project = {
            projectID:null,
            projectName: null,
            startDate: null,
            endDate: null,
            clientName:null
        };
        $scope.project = project;
        $scope.insertProject = function (project) {
            projectsService.insertProject(project).then(projectsService.projects().then(Projects, errorDetails));
        };
        var errorDetails = function (serviceResp) {
            $scope.Error = "Something went wrong";
        };
        projectsService.projects().then(Projects, errorDetails);
        $scope.Title = "Project Details Page";
    };
    app.controller('ProjectsController', ["$scope", "projectsService","$log", ProjectsController]);
}());