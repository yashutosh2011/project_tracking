(function () {
    var ManagerCommentsController = function ($scope, managerCommentService) {
        var managerComments = function (data) {
            $scope.Comments = data;
        };
        var errorDetails = function (serviceResp) {
            $scope.Error = "Something went wrong ??";
        };
        managerCommentService.managerComments()
            .then(managerComments, errorDetails);
        $scope.Title = "Manager comments Page";
    };
    app.controller("ManagerCommentsController", ["$scope", "managerCommentService", ManagerCommentsController]);
}());