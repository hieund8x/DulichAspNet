﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl"%>

<% 
    var item = ViewBag.Data as ModNewsEntity;
    var listOther = ViewBag.Other as List<ModNewsEntity>;
%>

<p class="link">
   <a href="/"><span>{RS:Web_HOME}</span></a><span>></span> 
   <%= Utils.GetMapPage(ViewPage.CurrentPage, "<span>></span>")%>
</p>

<div class="news-flash">
    <h4><a href="#"><%=item.Name%></a></h4>
    <%if (!string.IsNullOrEmpty(item.File))
    { %><a href="#"><img src="<%=Utils.GetResizeFile(item.File, 2, 194, 0)%>" alt="" /></a><%} %>
    <p><%=item.Summary%></p>
    <p>&nbsp;</p>
    <p><%=item.Content%></p>
    <p> Tags : 
       <% if (!string.IsNullOrEmpty(item.Tags))
       {
           string[] ArrTag = item.Tags.Split(',');%>
            <%for (int i = 0; i < ArrTag.Length; i++)
            {
                ArrTag[i] = ArrTag[i].Trim();%>
                <%if (i > 0)
                { %> , <%} %>
                <a href="<%= ViewPage.GetURL("Tag", Data.GetCode(ArrTag[i])) %>" title="<%= ArrTag[i] %>"><%= ArrTag[i]%></a>
            <%} %>
       <%} %>
    </p>
</div>
<p class="clear_10"></p>

<%--<ul>
    <%for (int i = 0; listOther != null && i < listOther.Count; i++)
    {
        string Url = ViewPage.GetURL(listOther[i].MenuID, listOther[i].Code);
        %>
    <li class="icon_c"><a href="<%=Url %>"> <%=listOther[i].Name%> </a></li>
    <%} %>
</ul>--%>