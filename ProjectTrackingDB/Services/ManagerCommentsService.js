(function () {
    var managerCommentService = function ($http) {
        var managerComments = function () {
           return $http.get("http://localhost:50651/api/ptmanagercomments").
                then(function (serviceResp) { return serviceResp.data });
        };
        return {
            managerComments:managerComments
        }
    };
    var module = angular.module("ProjectTrackingModule");
    module.factory("managerCommentService", ["$http", managerCommentService]);
}());