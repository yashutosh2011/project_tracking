<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserStoryDetails.aspx.cs" Inherits="ProjectTrackingDB.UserStories.UserStoryDetails" %>

<h1>{{Title}}</h1>
<hr />
<a href="#NewUserStory" class="btn btn-primary">Add New User Story</a>
<table class="table table-striped table-hover">
    <thead>
        <tr class="info">
            <td>User Story ID
            </td>
            <td>User Story
            </td>
            <td>
                Modify Project
            </td>
            <td>
                Delete Project
            </td>
        </tr>
    </thead>
    <tbody>
        <tr class="success">
            <td>{{Stories.userStoryID}}
            </td>
            <td>{{Stories.story}}
            </td>
            <td>
                <input type="button" value="Modify" class="btn btn-info" />
            </td>
            <td>
                <input type="button" value="Delete" class="btn btn-info" />
            </td>
        </tr>
    </tbody>
</table>
