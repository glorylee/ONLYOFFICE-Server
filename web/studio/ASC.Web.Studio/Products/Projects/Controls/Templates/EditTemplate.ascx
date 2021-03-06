﻿<%@ Assembly Name="ASC.Projects.Core" %>
<%@ Assembly Name="ASC.Web.Projects" %>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditTemplate.ascx.cs" Inherits="ASC.Web.Projects.Controls.Templates.EditTemplate" %>

<%@ Import Namespace="ASC.Web.Projects.Classes" %>
<%@ Import Namespace="ASC.Web.Projects.Resources" %>

<%@ Register TagPrefix="sc" Namespace="ASC.Web.Studio.Controls.Common" Assembly="ASC.Web.Studio" %>
<%@ Register TagPrefix="act" TagName="AddMilestoneContainer" Src="../../Controls/Common/AddMilestoneContainer.ascx" %>

<div class="projects-templates-container">
    <div id="pageHeader">
        <div class="pageTitle"><%= GetPageTitle() %></div>

        <div style="clear: both"></div>
    </div>

    <div id="templateTitleContainer" class="block-cnt-splitter requiredField">
        <span class="requiredErrorText"><%=ProjectTemplatesResource.TitleErrorTemplate %></span>
        <div class="headerPanelSmall"><%=ProjectTemplatesResource.TemplateTitle %>:</div>
        <input id="templateTitle" type="text" value="" class="textEdit" maxlength="250"/>
    </div>
    <act:AddMilestoneContainer runat="server" Edit="True"/>
    <div class="buttonContainer big-button-container">
        <a id="saveTemplate" class="button blue big">
            <%= !String.IsNullOrEmpty(UrlParameters.EntityID) ? ProjectTemplatesResource.SaveChanges :  ProjectTemplatesResource.SaveTemplate%>
        </a>
        <span class="splitter-buttons"></span>
        <a id="createProject" href="javascript:void(0)" class="button gray big">
            <%= !String.IsNullOrEmpty(UrlParameters.EntityID) ? ProjectTemplatesResource.CreateProject : ProjectTemplatesResource.SaveAndCreateProjFromTmpl%>
        </a>
        <span class="splitter-buttons"></span>
        <a id="cancelCreateProjectTemplate" class="button gray big" href="projectTemplates.aspx"><%=ProjectsCommonResource.Cancel%></a>
    </div>

    <div id="taskActionPanel" class="studio-action-panel">
        <ul class="actionList dropdown-content">
            <li id="editTask" class="dropdown-item"><%=ProjectTemplatesResource.Edit %></li>
            <li id="removeTask" class="dropdown-item"><%=ProjectTemplatesResource.Delete %></li>
        </ul>
    </div>

    <div id="milestoneActions" class="studio-action-panel">
        <ul class="actionList dropdown-content">
            <li id="editMilestone" class="dropdown-item"><%=ProjectTemplatesResource.Edit %></li>
            <li id="addTaskInMilestone" class="dropdown-item"><%=ProjectTemplatesResource.AddTask%></li>
            <li id="removeMilestone" class="dropdown-item"><%=ProjectTemplatesResource.Delete %></li>
        </ul>
    </div>
</div>
