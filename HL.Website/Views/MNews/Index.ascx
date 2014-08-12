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
<ul class="nav-news">
	<li>
		<div class="img-hot fll"><a href="#"><img src="/Content/style/images/imgnews.jpg" alt="" /></a></div>
		<h3><a href="#">Ba tháng, gần 4,4 triệu lượt du khách đến Hà Nội</a></h3>
		<p class="date">20/11/2012 - 42 lượt xem</p>
		<p>Theo số liệu thống kê của Phòng Quản lý lữ hành (Sở VH,TT&DL Hà Nội), trong quý I năm nay, Thủ đô đã thu hút gần 4,4 triệu lượt khách du lịch (tăng 28% so với cùng kỳ năm 2011), trong đó khách quốc tế ước đạt gần 578 nghìn lượt (tăng 20%) và...</p>
		<p><a href="#" class="view flr">Xem chi tiết</a></p>
	</li>
	<li>
		<div class="img-hot fll"><a href="#"><img src="/Content/style/images/imgnews.jpg" alt="" /></a></div>
		<h3><a href="#">Ba tháng, gần 4,4 triệu lượt du khách đến Hà Nội</a></h3>
		<p class="date">20/11/2012 - 42 lượt xem</p>
		<p>Theo số liệu thống kê của Phòng Quản lý lữ hành (Sở VH,TT&DL Hà Nội), trong quý I năm nay, Thủ đô đã thu hút gần 4,4 triệu lượt khách du lịch (tăng 28% so với cùng kỳ năm 2011), trong đó khách quốc tế ước đạt gần 578 nghìn lượt (tăng 20%) và...</p>
		<p><a href="#" class="view flr">Xem chi tiết</a></p>
	</li>
	<li>
		<div class="img-hot fll"><a href="#"><img src="/Content/style/images/imgnews.jpg" alt="" /></a></div>
		<h3><a href="#">Ba tháng, gần 4,4 triệu lượt du khách đến Hà Nội</a></h3>
		<p class="date">20/11/2012 - 42 lượt xem</p>
		<p>Theo số liệu thống kê của Phòng Quản lý lữ hành (Sở VH,TT&DL Hà Nội), trong quý I năm nay, Thủ đô đã thu hút gần 4,4 triệu lượt khách du lịch (tăng 28% so với cùng kỳ năm 2011), trong đó khách quốc tế ước đạt gần 578 nghìn lượt (tăng 20%) và...</p>
		<p><a href="#" class="view flr">Xem chi tiết</a></p>
	</li>
	<li>
		<div class="img-hot fll"><a href="#"><img src="/Content/style/images/imgnews.jpg" alt="" /></a></div>
		<h3><a href="#">Ba tháng, gần 4,4 triệu lượt du khách đến Hà Nội</a></h3>
		<p class="date">20/11/2012 - 42 lượt xem</p>
		<p>Theo số liệu thống kê của Phòng Quản lý lữ hành (Sở VH,TT&DL Hà Nội), trong quý I năm nay, Thủ đô đã thu hút gần 4,4 triệu lượt khách du lịch (tăng 28% so với cùng kỳ năm 2011), trong đó khách quốc tế ước đạt gần 578 nghìn lượt (tăng 20%) và...</p>
		<p><a href="#" class="view flr">Xem chi tiết</a></p>
	</li>
	<li>
		<div class="img-hot fll"><a href="#"><img src="/Content/style/images/imgnews.jpg" alt="" /></a></div>
		<h3><a href="#">Ba tháng, gần 4,4 triệu lượt du khách đến Hà Nội</a></h3>
		<p class="date">20/11/2012 - 42 lượt xem</p>
		<p>Theo số liệu thống kê của Phòng Quản lý lữ hành (Sở VH,TT&DL Hà Nội), trong quý I năm nay, Thủ đô đã thu hút gần 4,4 triệu lượt khách du lịch (tăng 28% so với cùng kỳ năm 2011), trong đó khách quốc tế ước đạt gần 578 nghìn lượt (tăng 20%) và...</p>
		<p><a href="#" class="view flr">Xem chi tiết</a></p>
	</li>

</ul>
<div class="clb"></div>
<div class="page"><img src="/Content/style/images/page.jpg" alt="" /></div>

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
