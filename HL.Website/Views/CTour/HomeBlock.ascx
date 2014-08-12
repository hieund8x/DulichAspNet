<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl" %>

<%
    var listItem = ViewBag.Data as List<ModTourEntity>;
%>

<div class="title">
	<p><a href="#">Tour trong nước</a></p>
	<ul>
		<li><a href="#">Tour miền bắc</a></li>
		<li><a href="#">Tour miền trung - tây nguyên</a></li>
		<li><a href="#">tour miền nam</a></li>
		<li><a href="#">tour chuyên đề</a></li>
	</ul>
</div>
<ul class="nav-tour">
	<li>
		<div class="img-tour"><a href="#"><img src="/Content/style/images/tour.jpg" alt="" /></a></div>
		<h3><a href="#">Hà Nội - Lào Cai</a></h3>
		<p>3 NGÀY 3 ĐÊM (TÀU HỎA – Ô TÔ)</p>
		<p>KHỞI HÀNH NGÀY 22/333</p>
		<p>SỐ CHỖ CÒN NHẬN: 02</p>
		<p><a href="#"><img src="/Content/style/images/dt.png" alt="" /></a></p>
	</li>
	<li>
		<div class="img-tour"><a href="#"><img src="/Content/style/images/tour.jpg" alt="" /></a></div>
		<h3><a href="#">Hà Nội - Lào Cai</a></h3>
		<p>3 NGÀY 3 ĐÊM (TÀU HỎA – Ô TÔ)</p>
		<p>KHỞI HÀNH NGÀY 22/333</p>
		<p>SỐ CHỖ CÒN NHẬN: 02</p>
		<p><a href="#"><img src="/Content/style/images/dt.png" alt="" /></a></p>
	</li>
	<li class="last">
		<div class="img-tour"><a href="#"><img src="/Content/style/images/tour.jpg" alt="" /></a></div>
		<h3><a href="#">Hà Nội - Lào Cai</a></h3>
		<p>3 NGÀY 3 ĐÊM (TÀU HỎA – Ô TÔ)</p>
		<p>KHỞI HÀNH NGÀY 22/333</p>
		<p>SỐ CHỖ CÒN NHẬN: 02</p>
		<p><a href="#"><img src="/Content/style/images/dt.png" alt="" /></a></p>
	</li>
	<li>
		<div class="img-tour"><a href="#"><img src="/Content/style/images/tour.jpg" alt="" /></a></div>
		<h3><a href="#">Hà Nội - Lào Cai</a></h3>
		<p>3 NGÀY 3 ĐÊM (TÀU HỎA – Ô TÔ)</p>
		<p>KHỞI HÀNH NGÀY 22/333</p>
		<p>SỐ CHỖ CÒN NHẬN: 02</p>
		<p><a href="#"><img src="/Content/style/images/dt.png" alt="" /></a></p>
	</li>
	<li>
		<div class="img-tour"><a href="#"><img src="/Content/style/images/tour.jpg" alt="" /></a></div>
		<h3><a href="#">Hà Nội - Lào Cai</a></h3>
		<p>3 NGÀY 3 ĐÊM (TÀU HỎA – Ô TÔ)</p>
		<p>KHỞI HÀNH NGÀY 22/333</p>
		<p>SỐ CHỖ CÒN NHẬN: 02</p>
		<p><a href="#"><img src="/Content/style/images/dt.png" alt="" /></a></p>
	</li>
	<li class="last">
		<div class="img-tour"><a href="#"><img src="/Content/style/images/tour.jpg" alt="" /></a></div>
		<h3><a href="#">Hà Nội - Lào Cai</a></h3>
		<p>3 NGÀY 3 ĐÊM (TÀU HỎA – Ô TÔ)</p>
		<p>KHỞI HÀNH NGÀY 22/333</p>
		<p>SỐ CHỖ CÒN NHẬN: 02</p>
		<p><a href="#"><img src="/Content/style/images/dt.png" alt="" /></a></p>
	</li>
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
    <p class="list-item-summary"><%= listItem[i].Summary %></p>
<%}%>
</div>--%>

