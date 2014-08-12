<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl" %>

<%
    var listItem = ViewBag.Data as List<ModVideoEntity>;
%>

<div class="tit-l"><a href="#">Video</a></div>
<div id="video-sidebar" class="video-l"></div>
<ul class="nav-video">
	<li><a href="#">Du lịch Vịnh Hạ Long</a></li>
	<li><a href="#">Du lịch Vịnh Hạ Long</a></li>
	<li><a href="#">Du lịch Vịnh Hạ Long</a></li>
</ul>
<script type='text/javascript'>
    jwplayer('video-sidebar').setup({
        file: 'https://www.youtube.com/watch?v=g8I-LoBIFgQ',
        width: '100%',
        aspectratio: '16:9',
    });
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

