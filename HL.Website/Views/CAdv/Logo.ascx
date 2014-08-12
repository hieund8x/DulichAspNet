<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl" %>


<% var listItem = ViewBag.Data as List<ModAdvEntity>; %>
<%if(listItem != null && listItem.Count>0){ %>
    <div class="logo"><a href="<%=listItem[0].URL %>"><img src="<%=listItem[0].File.Replace("~/","/") %>" alt="" /></a></div>
<%}else{ %>
    <div class="logo"><a href="/"><img src="/Content/style/images/logo.png" alt="" /></a></div>
<%} %>
<%--<%if(listItem != null){ %> 
    <div class="logo"><a href="#"><img src="/Content/style/images/logo.png" alt="" /></a></div>
</style>
<%} %>--%>