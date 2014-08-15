<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl"%>

<%
    var listItem = ViewBag.Data as List<ModNewsEntity>;
    var model = ViewBag.Model as MNewsModel;
%>

<div class="tit-news">
	<div class="news-l fll"></div>
	<div class="news-ct fll">
		<p><%= ViewPage.CurrentPage.Name %></p>
	</div>
	<div class="news-r fll"></div>
</div><!--tit-news-->
<%if(listItem!=null && listItem.Count>0){ %>
<ul class="nav-news">
    <%for(int i=0;listItem!=null && i<listItem.Count;i++){ %>
	<li>
		<div class="img-hot fll"><a href="<%=ViewPage.GetURL(listItem[i].MenuID,listItem[i].Code) %>"><img src="<%=Utils.GetResizeFile(listItem[i].File, 2, 167, 112)%>" alt="" /></a></div>
		<h3><a href="<%=ViewPage.GetURL(listItem[i].MenuID,listItem[i].Code) %>"><%=listItem[i].Name %></a></h3>
		<p class="date"><%=Utils.DayOfWeekVN(listItem[i].Published) %>, <%=string.Format("{0:dd-MM-yyyy}", listItem[i].Published) %></p>
		<p><%=listItem[i].Summary %></p>
		<p><a href="<%=ViewPage.GetURL(listItem[i].MenuID,listItem[i].Code) %>" class="view flr">Xem chi tiết</a></p>
	</li>
    <%} %>

</ul>
<div class="clb"></div>
<div class="page">
    <ul>
    <%= GetPagination(model.Page, model.PageSize, model.TotalRecord)%>
    </ul>
</div>
<%}else{ %>
    <div style="margin:20px 10px;">
        {RS:Page_NoContent}
    </div>
<%} %>
<%--<p class="link">
   <a href="/"><span>{RS:Web_HOME}</span></a><span>></span> 
   <%= Utils.GetMapPage(ViewPage.CurrentPage, "<span>></span>")%>
</p>

 <%for (int i = 0; listItem != null && i < listItem.Count; i++ )
  {string Url = ViewPage.GetURL(listItem[i].MenuID, listItem[i].Code); %>
<div class="news-flash">
    <h4><a href="<%=Url %>"><%=listItem[i].Name%></a></h4>
    <%if (!string.IsNullOrEmpty(listItem[i].File))
    { %><a href="<%=Url %>"><img src="<%=Utils.GetResizeFile(listItem[i].File, 2, 194, 0)%>" alt="" /></a><%} %>
    <p><%=listItem[i].Summary%></p>
</div>
<p class="clear_10"></p>
<%} %>

<p id="page">
  <%= GetPagination(model.Page, model.PageSize, model.TotalRecord)%>
</p>--%>
