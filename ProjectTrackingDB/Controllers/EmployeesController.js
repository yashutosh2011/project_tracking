(function () {
    var EmployeesController = function ($scope, employeeService, $log) {
        var employees = function (data) {
            $scope.Employees = data;
        };
        $scope.SearchEmployee = function (EmployeeName) {
            employeeService.searchEmployees(EmployeeName).then(employees, errorDetails);
            $log.info('Found employees which contains-'+EmployeeName);
        };
        var errorDetails = function (serviceResp) {
            $scope.Error = "Something went wrong ??";
        };
        employeeService.employees()
            .then(employees, errorDetails);
        $scope.Title = "Employee Details Page";
        $scope.EmployeeName = null;
    };
    app.controller("EmployeesController", ["$scope", "employeeService", "$log", EmployeesController]);
}());