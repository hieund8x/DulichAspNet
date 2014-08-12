<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl" %>

<%
    var listItem = ViewBag.Data as List<ModAlbumEntity>;
%>

<div class="tit-album"><a href="#">Album hình ảnh</a></div>
<ul class="nav-album">
	<li><a href="#"><img src="/Content/style/images/album.jpg" alt="" /></a></li>
	<li class="last"><a href="#"><img src="/Content/style/images/album.jpg" alt="" /></a></li>
	<li><a href="#"><img src="/Content/style/images/album.jpg" alt="" /></a></li>
	<li class="last"><a href="#"><img src="/Content/style/images/album.jpg" alt="" /></a></li>
</ul>
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

