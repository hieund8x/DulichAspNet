<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl"%>

<%
    var listItem = ViewBag.Data as List<ModAlbumEntity>;
    var model = ViewBag.Model as MAlbumModel;
%>

<div class="tit-news">
	<div class="news-l1 fll"></div>
	<div class="news-ct fll">
		<p><%=ViewPage.CurrentPage.Name %></p>
	</div>
	<div class="news-r fll"></div>
</div><!--tit-news-->
<%if(listItem!=null && listItem.Count>0){ %>
<ul class="nav-albums">
    <%for(int i=0;i<listItem.Count;i++){
          var listDetail = ModAlbumDetailService.Instance.CreateQuery()
                          .Where(o => o.Activity == true)
                          .Where(o => o.AlbumID == listItem[i].ID)
                          .ToList_Cache();
          int coutnImgs = listDetail.Count;
    %>
	<li>
		<div class="khung"><a href="<%=ViewPage.GetURL(listItem[i].MenuID,listItem[i].Code) %>"><img src="<%=Utils.GetResizeFile(listItem[i].File, 2, 196, 144)%>" alt="" /></a></div>
		<h4><a href="<%=ViewPage.GetURL(listItem[i].MenuID,listItem[i].Code) %>"><%=listItem[i].Name %></a></h4>
		<p class="date"><%=coutnImgs %> ảnh - Ngày đăng: <%=string.Format("{0:dd-MM-yyyy}", listItem[i].Publisher) %></p>
	</li>
    <%} %>
</ul>
<div class="clb"></div>
<div class="page">
    <%= GetPagination(model.Page, model.PageSize, model.TotalRecord)%>
</div>
<%}else{ %>
    <div style="margin:20px 10px;">
        {RS:Page_NoContent}
    </div>
<%} %>
<%--<div class="title"><%= ViewPage.CurrentPage.Name %></div>

<div class="list">
<%for(int i = 0; listItem != null && i < listItem.Count; i++)
{
string Url = ViewPage.GetURL(listItem[i].MenuID, listItem[i].Code);%>
    <p class="list-item-name"><a href="<%=Url %>"><%= listItem[i].Name %></a></p>
    <p class="list-item-img"><a href="<%=Url %>">
                   <%if (!string.IsNullOrEmpty(listItem[i].File))
                      { %><img src="<%= Utils.GetResizeFile(listItem[i].File, 2, 100, 100)%>" alt="<%= listItem[i].Name %>" /><%} %></a></p>
<%}%>
</div>

<div class="navigation">
  <%= GetPagination(model.Page, model.PageSize, model.TotalRecord)%>
</div>--%>
