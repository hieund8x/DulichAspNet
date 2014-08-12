<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl"%>

<%
    var listItem = ViewBag.Data as List<ModTourEntity>;
    var model = ViewBag.Model as MTourModel;
%>

<div class="tour">
	<ul class="tabs2">
		<li><a href="#tab12"><span>Tour trong nước</span></a></li>
		<li><a href="#tab22"><span>tour miền bắc</span></a></li>
		<li><a href="#tab32"><span>tour miền trung - tây nguyên</span></a></li>
		<li><a href="#tab52"><span>tour miền nam</span></a></li>
		<li><a href="#tab52"><span>tour chuyên đề</span></a></li>

	</ul>
<div class="tab_container2">
	<div id="tab12" class="tab_content2">
		<table class="table" cellpadding="0" cellspacing="0">
			<tr>
				<th>Điểm đến</th>
				<th>Giá từ</th>
				<th>Số ngày</th>
				<th>Ngày đi</th>
				<th>Phương tiện</th>
				<th>Số chỗ còn nhận</th>
			</tr>
			<tr>
				<td>Hà Nội - Cát Bà - Vịnh Lan Hạ 
3 ngày</td>
				<td>2.219.000</td>
				<td>3</td>
				<td>Hàng ngày</td>
				<td>Ô tô</td>
				<td>
					<p style="color: #f00">9</p>
					<a href="#"><img src="/Content/style/images/dat.png" alt="" /></a>
				</td>
			</tr>
			<tr class="old">
				<td>Hà Nội - Cát Bà - Vịnh Lan Hạ 
3 ngày</td>
				<td>2.219.000</td>
				<td>3</td>
				<td>Hàng ngày</td>
				<td>Ô tô</td>
				<td>
					<p style="color: #f00">9</p>
					<a href="#"><img src="/Content/style/images/dat.png" alt="" /></a>
				</td>
			</tr>
			<tr>
				<td>Hà Nội - Cát Bà - Vịnh Lan Hạ 
3 ngày</td>
				<td>2.219.000</td>
				<td>3</td>
				<td>Hàng ngày</td>
				<td>Ô tô</td>
				<td>
					<p style="color: #f00">9</p>
					<a href="#"><img src="/Content/style/images/dat.png" alt="" /></a>
				</td>
			</tr>
			<tr class="old">
				<td>Hà Nội - Cát Bà - Vịnh Lan Hạ 
3 ngày</td>
				<td>2.219.000</td>
				<td>3</td>
				<td>Hàng ngày</td>
				<td>Ô tô</td>
				<td>
					<p style="color: #f00">9</p>
					<a href="#"><img src="/Content/style/images/dat.png" alt="" /></a>
				</td>
			</tr>
			<tr>
				<td>Hà Nội - Cát Bà - Vịnh Lan Hạ 
3 ngày</td>
				<td>2.219.000</td>
				<td>3</td>
				<td>Hàng ngày</td>
				<td>Ô tô</td>
				<td>
					<p style="color: #f00">9</p>
					<a href="#"><img src="/Content/style/images/dat.png" alt="" /></a>
				</td>
			</tr>
			<tr class="old">
				<td>Hà Nội - Cát Bà - Vịnh Lan Hạ 
3 ngày</td>
				<td>2.219.000</td>
				<td>3</td>
				<td>Hàng ngày</td>
				<td>Ô tô</td>
				<td>
					<p style="color: #f00">9</p>
					<a href="#"><img src="/Content/style/images/dat.png" alt="" /></a>
				</td>
			</tr>
			<tr>
				<td>Hà Nội - Cát Bà - Vịnh Lan Hạ 
3 ngày</td>
				<td>2.219.000</td>
				<td>3</td>
				<td>Hàng ngày</td>
				<td>Ô tô</td>
				<td>
					<p style="color: #f00">9</p>
					<a href="#"><img src="/Content/style/images/dat.png" alt="" /></a>
				</td>
			</tr>
			<tr class="old">
				<td>Hà Nội - Cát Bà - Vịnh Lan Hạ 
3 ngày</td>
				<td>2.219.000</td>
				<td>3</td>
				<td>Hàng ngày</td>
				<td>Ô tô</td>
				<td>
					<p style="color: #f00">9</p>
					<a href="#"><img src="/Content/style/images/dat.png" alt="" /></a>
				</td>
			</tr>
			<tr>
				<td>Hà Nội - Cát Bà - Vịnh Lan Hạ 
3 ngày</td>
				<td>2.219.000</td>
				<td>3</td>
				<td>Hàng ngày</td>
				<td>Ô tô</td>
				<td>
					<p style="color: #f00">9</p>
					<a href="#"><img src="/Content/style/images/dat.png" alt="" /></a>
				</td>
			</tr>
			<tr class="old">
				<td>Hà Nội - Cát Bà - Vịnh Lan Hạ 
3 ngày</td>
				<td>2.219.000</td>
				<td>3</td>
				<td>Hàng ngày</td>
				<td>Ô tô</td>
				<td>
					<p style="color: #f00">9</p>
					<a href="#"><img src="/Content/style/images/dat.png" alt="" /></a>
				</td>
			</tr>
							
		</table>
		<div class="clb"></div>
		<div class="page">
			<ul>
				<li><a href="#" class="first"></a></li>
				<li><a href="#" class="prev"></a></li>
				<li><a href="#" class="active">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#" class="next"></a></li>
				<li><a href="#" class="lastpage"></a></li>
			</ul>
		</div>
	</div>
	<div id="tab22" class="tab_content2">

	</div>
	<div id="tab32" class="tab_content2">

	</div>
	<div id="tab42" class="tab_content2">
			          
	</div>
	<div id="tab52" class="tab_content2">
			          
	</div>
</div>
</div>

<%--<div class="title"><%= ViewPage.CurrentPage.Name %></div>

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
</div>

<div class="navigation">
  <%= GetPagination(model.Page, model.PageSize, model.TotalRecord)%>
</div>--%>
