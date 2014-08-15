﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl" %>

<%
    var listItem = ViewBag.Data as List<ModVideoEntity>;
%>
<script type="text/javascript">
    function getVideoPlay(path, title) {
        jwplayer("video-sidebar").setup({
            title: "",
            file: path,
            width: '100%',
            aspectratio: '16:9',
        });
    }

</script>
<div class="tit-l"><a href="#">Video</a></div>
<div id="video-sidebar" class="video-l"></div>
<ul class="nav-video">
    <%for (int i = 0; (listItem != null && listItem.Count > 0) && i < listItem.Count; i++)
      { %>
    <li><a href="javascript:getVideoPlay('<%= listItem[i].LinkVideo.StartsWith("http") ? listItem[i].LinkVideo : listItem[i].File.Replace("~/", "/")%>','<%=listItem[i].Name %>')"><%=listItem[i].Name %></a> </li>
    <%} %>
</ul>
<script type='text/javascript'>
    <%if(listItem!=null && listItem.Count>0){ %>
    getVideoPlay('<%= listItem[0].LinkVideo.StartsWith("http") ? listItem[0].LinkVideo : listItem[0].LinkVideo.Replace("~/", "/")%>', '<%=listItem[0].Name %>');
        <%}else{ %>
    getVideoPlay('', '');
    <%} %>
	</script>

<div class="clb"></div>


<%--<div class="title"><%= ViewBag.Title %></div>

<div class="list">
<%for(int i = 0; listItem != null && i < listItem.Count; i++)
{
string Url = ViewPage.GetURL(listItem[i].MenuID, listItem[i].Code);%>
    <p class="list-item-name"><a href="<%=Url %>"><%= listItem[i].Name %></a></p>
    <p class="list-item-img"><a href="<%=Url %>">
                   <%if (!string.IsNullOrEmpty(listItem[i].File))
                      { %><img src="<%= Utils.GetResizeFile(listItem[i].File, 2, 100, 100)%>" alt="<%= listItem[i].Name %>" /><%} %></a></p>
<%}%>
</div>--%>

