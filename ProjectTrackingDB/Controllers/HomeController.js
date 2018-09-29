(function () {
    var HomeController = function ($scope) {
        $scope.Message = "Welcome to Online Project Tracking website";
        $scope.CompanyName = "Fictious Company";
        $scope.Title = "Project Tracking HomePage";
    };
    app.controller("HomeController",["$scope", HomeController]);
}());