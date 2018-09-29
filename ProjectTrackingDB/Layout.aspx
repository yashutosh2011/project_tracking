﻿<!DOCTYPE html>
<html lang="en" ng-app="ProjectTrackingModule">
<head>
    <title>Project Tracking Home Page</title>
     <base href="/">
    <link href="CSS/amelia.bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/Site.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.1.0.min.js"></script>
    <script src="Scripts/angular.js"></script>
    <script src="Scripts/angular-route.js"></script>
    <script src="Scripts/app.js"></script>
    <script src="Controllers/HomeController.js"></script>
    <script src="Services/ProjectsService.js"></script>
    <script src="Controllers/ProjectsController.js"></script>
    <script src="Controllers/UserStoriesController.js"></script>
    <script src="Services/UserStoriesService.js"></script>
    <script src="../Services/EmployeesService.js"></script>
    <script src="../Controllers/EmployeesController.js"></script>
     <script src="../Services/ProjectTasksService.js"></script>
    <script src="../Controllers/ProjectTasksController.js"></script>
    <script src="Services/ManagerCommentsService.js"></script>
    <script src="Controllers/ManagerCommentsController.js"></script>
</head>
<body>
    <div class="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#Projects">Online Project Tracking Site</a>
        </div>
        <div class="navbar-collapse collapse navbar-responsive-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="Home">Home</a>
                </li>
                <li class="active">
                    <a href="Projects">Projects</a>
                </li>
                <li class="active">
                    <a href="UserStories">User Stories</a>
                </li>
                <li class="active">
                    <a href="Employees">Employees</a>
                </li>
                <li class="active">
                    <a href="Tasks">Tasks</a>
                </li>
            </ul>
            <img src="../Images/linkedin.png" alt="Linked In" style="float: right; margin-right: 10px; margin-top: 1%; height: 30px; width: 30px" />
            <img src="../Images/Twitter_bird_icon.png" alt="Twitter" style="float: right; margin-right: 10px; margin-top: 1%; height: 30px; width: 30px" />
            <img src="../Images/facebook-icon.png" alt="Facebook" style="float: right; margin-right: 10px; margin-top: 1%; height: 30px; width: 30px" />
        </div>
    </div>

    <div ng-view style="margin-left: 10%; margin-right: 10%;">
    </div>

    <div>
        <div>
            <footer>
                <div>
                    <a href="#">Site Map</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                   
                    <a href="#">About Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                   
                    <a href="#">Contact Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                   
                    <a href="#">Policy</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                   
                    <a href="#">Clients</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                   
                    <a href="#">Feedback</a>
                </div>
                &copy;All Rights Reserved by DotNetCurry.
               
                <address>
                    Ficticious Company,
                    Contact No - (222) - 5563369
               
                </address>
            </footer>
        </div>
    </div>
</body>
</html>

