<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl" %>

<%
    var listItem = ViewBag.Data as List<ModTourEntity>;
%>

<div class="tabshome">
				<ul class="tabs">
			        <li><a href="#tab1"><span>Lịch khởi hành</span></a></li>
			        <li><a href="#tab2"><span>Tour khuyến mãi</span></a></li>
			        <li><a href="#tab3"><span>tour mới</span></a></li>
			        <li><a href="#tab5"><span>visa - hộ chiếu</span></a></li>
			        <li><a href="#tab6"><span>vận chuyển</span></a></li>
			        <li><a href="#tab7"><span>đặt phòng khách sạn</span></a></li>

			    </ul>
			    <div class="tab_container">
			        <div id="tab1" class="tab_content">
			           <ul class="lkh">
			           		<li>
			           			<div class="img-lkh"><a href="#"><img src="/Content/style/images/lkh.jpg" alt="" /></a></div>
			           			<h3><a href="#">Hà Nội - Lào Cai</a></h3>
								<p>3 NGÀY 3 ĐÊM (MÁY BAY)</p>
								<p>KHỞI HÀNH NGÀY 22/333</p>
								<p>SỐ CHỖ CÒN NHẬN: 02</p>
			           		</li>
							<li>
			           			<div class="img-lkh"><a href="#"><img src="/Content/style/images/lkh.jpg" alt="" /></a></div>
			           			<h3><a href="#">Hà Nội - Lào Cai</a></h3>
								<p>3 NGÀY 3 ĐÊM (MÁY BAY)</p>
								<p>KHỞI HÀNH NGÀY 22/333</p>
								<p>SỐ CHỖ CÒN NHẬN: 02</p>
			           		</li>
							<li>
			           			<div class="img-lkh"><a href="#"><img src="/Content/style/images/lkh.jpg" alt="" /></a></div>
			           			<h3><a href="#">Hà Nội - Lào Cai</a></h3>
								<p>3 NGÀY 3 ĐÊM (MÁY BAY)</p>
								<p>KHỞI HÀNH NGÀY 22/333</p>
								<p>SỐ CHỖ CÒN NHẬN: 02</p>
			           		</li>
							<li>
			           			<div class="img-lkh"><a href="#"><img src="/Content/style/images/lkh.jpg" alt="" /></a></div>
			           			<h3><a href="#">Hà Nội - Lào Cai</a></h3>
								<p>3 NGÀY 3 ĐÊM (MÁY BAY)</p>
								<p>KHỞI HÀNH NGÀY 22/333</p>
								<p>SỐ CHỖ CÒN NHẬN: 02</p>
			           		</li>
			           </ul>
			        </div>
			        <div id="tab2" class="tab_content">
			            <ul class="lkh">
			           		<li>
			           			<div class="img-lkh"><a href="#"><img src="/Content/style/images/lkh.jpg" alt="" /></a></div>
			           			<h3><a href="#">Hà Nội - Lào Cai</a></h3>
								<p>3 NGÀY 3 ĐÊM (MÁY BAY)</p>
								<p>KHỞI HÀNH NGÀY 22/333</p>
								<p>SỐ CHỖ CÒN NHẬN: 02</p>
			           		</li>
							<li>
			           			<div class="img-lkh"><a href="#"><img src="/Content/style/images/lkh.jpg" alt="" /></a></div>
			           			<h3><a href="#">Hà Nội - Lào Cai</a></h3>
								<p>3 NGÀY 3 ĐÊM (MÁY BAY)</p>
								<p>KHỞI HÀNH NGÀY 22/333</p>
								<p>SỐ CHỖ CÒN NHẬN: 02</p>
			           		</li>
							<li>
			           			<div class="img-lkh"><a href="#"><img src="/Content/style/images/lkh.jpg" alt="" /></a></div>
			           			<h3><a href="#">Hà Nội - Lào Cai</a></h3>
								<p>3 NGÀY 3 ĐÊM (MÁY BAY)</p>
								<p>KHỞI HÀNH NGÀY 22/333</p>
								<p>SỐ CHỖ CÒN NHẬN: 02</p>
			           		</li>
							<li>
			           			<div class="img-lkh"><a href="#"><img src="/Content/style/images/lkh.jpg" alt="" /></a></div>
			           			<h3><a href="#">Hà Nội - Lào Cai</a></h3>
								<p>3 NGÀY 3 ĐÊM (MÁY BAY)</p>
								<p>KHỞI HÀNH NGÀY 22/333</p>
								<p>SỐ CHỖ CÒN NHẬN: 02</p>
			           		</li>
			           </ul>
			        </div>
			        <div id="tab3" class="tab_content">
			           <ul class="lkh">
			           		<li>
			           			<div class="img-lkh"><a href="#"><img src="/Content/style/images/lkh.jpg" alt="" /></a></div>
			           			<h3><a href="#">Hà Nội - Lào Cai</a></h3>
								<p>3 NGÀY 3 ĐÊM (MÁY BAY)</p>
								<p>KHỞI HÀNH NGÀY 22/333</p>
								<p>SỐ CHỖ CÒN NHẬN: 02</p>
			           		</li>
							<li>
			           			<div class="img-lkh"><a href="#"><img src="/Content/style/images/lkh.jpg" alt="" /></a></div>
			           			<h3><a href="#">Hà Nội - Lào Cai</a></h3>
								<p>3 NGÀY 3 ĐÊM (MÁY BAY)</p>
								<p>KHỞI HÀNH NGÀY 22/333</p>
								<p>SỐ CHỖ CÒN NHẬN: 02</p>
			           		</li>
							<li>
			           			<div class="img-lkh"><a href="#"><img src="/Content/style/images/lkh.jpg" alt="" /></a></div>
			           			<h3><a href="#">Hà Nội - Lào Cai</a></h3>
								<p>3 NGÀY 3 ĐÊM (MÁY BAY)</p>
								<p>KHỞI HÀNH NGÀY 22/333</p>
								<p>SỐ CHỖ CÒN NHẬN: 02</p>
			           		</li>
							<li>
			           			<div class="img-lkh"><a href="#"><img src="/Content/style/images/lkh.jpg" alt="" /></a></div>
			           			<h3><a href="#">Hà Nội - Lào Cai</a></h3>
								<p>3 NGÀY 3 ĐÊM (MÁY BAY)</p>
								<p>KHỞI HÀNH NGÀY 22/333</p>
								<p>SỐ CHỖ CÒN NHẬN: 02</p>
			           		</li>
			           </ul>
			        </div>
			        <div id="tab4" class="tab_content">
			          
			        </div>
			        <div id="tab5" class="tab_content">
			          
			        </div>
			        <div id="tab6" class="tab_content">
			          
			        </div>
			        <div id="tab7" class="tab_content">
			          
			        </div>

			    </div>
			</div><!--tabshome-->

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

