﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProjectTrackingDB.Home" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" ng-app="ProjectTrackingModule">
<head runat="server">
    <title>Project Tracking HomePage</title>
    <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../CSS/amelia.bootstrap.min.css" rel="stylesheet" />
    <link href="../CSS/Site.css" rel="stylesheet" />
    <script src="../Scripts/angular.min.js">
    </script>
    <script src="../Scripts/bootstrap.min.js">
    </script>
    <script src="../Scripts/app.js">
    </script>
    <script src="../Controllers/HomeController.js"></script>
</head>
<body ng-controller="HomeController">
        <div class="navbar navbar-default">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="..\Home.aspx">{{CompanyName}}</a>
            </div>
            <div class="navbar-collapse collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="#Home">Home</a>
                    </li>
                    <li class="active">
                        <a href="#Projects">Projects</a>
                    </li>
                    <li class="active">
                        <a href="#UserStories">User Stories</a>
                    </li>
                    <li class="active">
                        <a href="#Employees">Employees</a>
                    </li>
                    <li class="active">
                        <a href="#Tasks">Tasks</a>
                    </li>
                    <li class="active">
                        <a href="#Comments">Manager Comments</a>
                    </li>
                </ul>
                <img src="../Images/linkedin.png" alt="Linked In" style="float: right; margin-right: 10px; margin-top: 1%; height: 30px; width: 30px" />
                <img src="../Images/Twitter_bird_icon.png" alt="Twitter" style="float: right; margin-right: 10px; margin-top: 1%; height: 30px; width: 30px" />
                <img src="../Images/facebook-icon.png" alt="Facebook" style="float: right; margin-right: 10px; margin-top: 1%; height: 30px; width: 30px" />
            </div>
        </div>
        <div style="margin-left: 10%; margin-right: 10%;">
            <div id="myCarousel" class="carousel slide" data-interval="5000" data-ride="carousel" style="height: 250px;">
                <!-- Carousel indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
            </ol>
                <!-- Carousel items -->
            <div class="carousel-inner">
                <div class="active item" style="margin-left: 15%; margin-right: 15%">
                    <h2>Manage Your Projects !!</h2>
                    <p>This site is used for managing projects. A single Tool to manage your project!!</p>
                    <br />
                    <br />
                    <p style="text-align: right"><a class="btn btn-primary">More Details</a></p>
                </div>
                <div class="item" style="margin-left: 15%; margin-right: 15%">
                    <h2>Add User Stories !!</h2>
                    <p>You can add different user stories as a Business Administrators. Your Stories will be form your project tasks.</p>
                    <br />
                    <p style="text-align: right"><a class="btn btn-primary">User Stories</a></p>
                </div>
                <div class="item" style="margin-left: 15%; margin-right: 15%">
                    <h2>Manager Comments !!</h2>
                    <p>Manager can add comments for the tasks which are going on under your project!!</p>
                    <br />
                    <br />
                    <p style="text-align: right"><a class="btn btn-primary">Manager Comments</a></p>
                </div>
                <div class="item" style="margin-left: 15%; margin-right: 15%">
                    <h2>Employees List !!</h2>
                    <p>
                        You can see all the employees details with their skill sets to assign the appropriate tasks and do efficient project management.
                    </p>
                    <br />
                    <p style="text-align: right"><a class="btn btn-primary">Let Me Try !!</a></p>
                </div>
                <div class="item" style="margin-left: 15%; margin-right: 15%">
                    <h2>Track Project Progress !!</h2>
                    <p>You can track Project Progress of all employees who are working under that project. You can also see the report for individual employee and his/her performance.</p>
                    <br />
                    <p style="text-align: right"><a class="btn btn-primary">Try It !!</a></p>
                </div>
                <div class="item" style="margin-left: 15%; margin-right: 15%">
                    <h2>Add New Projects !!</h2>
                    <p>Your company can add different projects into this site and manager can assign the tasks to the users for the project.</p>
                    <br />
                    <p style="text-align: right"><a class="btn btn-primary">Check Out Snaps!!</a></p>
                </div>
            </div>
            <!-- Carousel nav -->
            <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="carousel-control right" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right "></span>
            </a>
        </div>
        <div class="btn-group btn-group-justified" style="margin-left:2%;margin-right:2%;">
            <div class="panel panel-primary" style="width: 30%; height: 170px; margin-top: 3%; margin-right: 20px; float: left;">
                <div class="panel-heading">
                    <h3 class="panel-title">Our Mission</h3>
                </div>
                <div class="panel-body">
                    Build the web application to manage the projects online through out the organization.
                </div>
            </div>
 
            <div class="panel panel-primary" style="width: 30%; height: 170px; margin-top: 3%; margin-right: 20px; float: left;">
                <div class="panel-heading">
                    <h3 class="panel-title">Managers</h3>
                </div>
                <div class="panel-body">
                    The Managers can manage and track their project progress using this site.
                </div>
            </div>
            <div class="panel panel-primary" style="width: 30%; height: 170px; margin-top: 3%; float: left;">
                <div class="panel-heading">
                    <h3 class="panel-title">Purpose</h3>
                </div>
                <div class="panel-body">
                    Make developers learn and build the complete website using HTML 5, CSS 3, CSS Bootstrap and Angular JS.
                </div>
            </div>
            </div>
        </div>
        <div >
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
                &copy;All Rights Reserved by Ashutosh.
                <address>
                    SouthExtension, NewDelhi
                    110003
                </address>
            </footer>
        </div>
    </div>
</body>
</html>
