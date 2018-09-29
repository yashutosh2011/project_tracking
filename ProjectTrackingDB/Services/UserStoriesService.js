(function () {
    var userStoriesService = function ($http) {
        var userStories = function () {
            return $http.get("http://localhost:50651/api/ptuserstories/2").then(function (serviceResp) {
                return serviceResp.data;
            });
        };
        return {
            userStories:userStories
        };
    };
    var module = angular.module("ProjectTrackingModule");
    module.factory("userStoriesService", ["$http", userStoriesService]);
}());