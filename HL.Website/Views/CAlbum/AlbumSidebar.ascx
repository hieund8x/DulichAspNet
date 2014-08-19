<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl" %>

<%
    var listItem = ViewBag.Data as List<ModAlbumEntity>;
    int MenuID = ViewBag.MenuID;
    var listPage = SysPageService.Instance.CreateQuery()
                                          .Where(o => o.Activity == true)
                                          .Where(MenuID > 0, o => o.MenuID == MenuID)
                                          .ToList_Cache();
%>

<div class="tit-album">
    <%if(listPage!=null && listPage.Count>0){ %>
        <p><a href="<%=ViewPage.GetPageURL(listPage[0]) %>"><%=listPage[0].Name %></a></p>
    <%}else{ %>
        <a href="javascript:void(0);"><%=ViewBag.Title!=null ? ViewBag.Title : "" %></a>
    <%} %>
</div>
<ul class="nav-album">
    <%for(int i=0;listItem!=null && i<listItem.Count;i++){ %>
	<li class="<%=i>0 && i%2==0 ? "last" : "" %>"><a href="<%=ViewPage.GetURL(listItem[i].MenuID, listItem[i].Code)%>"><img src="<%=Utils.GetResizeFile(listItem[i].File, 2, 84, 63)%>" alt="" /></a></li>
    <%} %>
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

