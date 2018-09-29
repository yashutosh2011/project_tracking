<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="ProjectTrackingDB.Employees.EmployeeDetails" %>
    <h1>{{Title}}</h1>
<hr />
     <form name="searchEmployeeForm" ng-submit="SearchEmployee(EmployeeName)">
         Enter Employee name or charecter to search - <input type="text" required="required" placeholder="Enter Employee ID" ng-model="EmployeeName" />
         <input type="submit" value="Search Emplpoyee" />
     </form>
<hr />
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
        <tr class="success" ng-repeat="Employee in Employees |limitTo:20| orderBy:'-employeeName'" ng-show="Employees">
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
