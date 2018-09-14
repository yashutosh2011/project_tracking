(function () {
    var EmployeesController = function ($scope, $http) {
        var employees = function (serviceResp) {
            $scope.Employees = serviceResp.data;
        };
        $scope.SearchEmployee = function (EmployeeName) {
            $http.get("http://localhost:50651/api/ptemployees/"+EmployeeName).then(employees, errorDetails);
        };
        var errorDetails = function (serviceResp) {
            $scope.Error = "Something went wrong ??";
        };
        $http.get("http://localhost:50651/api/ptemployees")
            .then(employees, errorDetails);
        $scope.Title = "Employee Details Page";
    };
    app.controller("EmployeesController", EmployeesController);
}());