<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="ProjectTrackingDB.Employees.EmployeeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="ProjectTrackingModule">
<head runat="server">
    <title>Employee Details</title>
    <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../CSS/amelia.bootstrap.min.css" rel="stylesheet" />
    <link href="../CSS/Site.css" rel="stylesheet" />
    <script src="../Scripts/angular.min.js">
    </script>
    <script src="../Scripts/bootstrap.min.js">
    </script>
    <script src="../Scripts/app.js">
    </script>
    <script src="../Controllers/EmployeesController.js"></script>
</head>
 <body ng-controller="EmployeesController">
    <h1>{{Title}}</h1>
     <form name="searchEmployeeForm" ng-submit="SearchEmployee(EmployeeName)">
         Enter Employee name or charecter to search - <input type="text" required="required" placeholder="Enter Employee ID" ng-model="EmployeeName" />
         <input type="submit" value="Search Emplpoyee" />
     </form>
    <table class="table table-striped table-hover" ng-show="Employees">
    <thead>
        <tr class="info">
            <td>
                Employee ID
            </td>
            <td>
                Employee Name
            </td>
            <td>
                Designation
            </td>
            <td>
                Contact No.
            </td>
            <td>
                EMailID
            </td>
            <td>
                Skill Sets
            </td>
        </tr>
    </thead>
    <tbody>
        <tr class="success" ng-repeat="Employee in Employees |limitTo:5| orderBy:'-employeeName'">
            <td>
                {{Employee.employeeID}}
            </td>
            <td>
                {{Employee.employeeName}}
            </td>
            <td>
                {{Employee.designation}}
            </td>
            <td>
                {{Employee.contactNo}}
            </td>
            <td>
                {{Employee.eMailID}}
            </td>
            <td>
                {{Employee.skillSets}}
            </td>
        </tr>
    </tbody>
</table>
</body>
</html>
