<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl"%>

<% 
    var item = ViewBag.Data as ModTourEntity;
    var listOther = ViewBag.Other as List<ModTourEntity>;
%>

<div class="tit-tour">
	<ul>
		<li><a href="#">Tour trong nước</a></li>
		<li><a href="#">tour miền bắc</a></li>
	</ul>
</div>
<!-- tit-tour -->
<div class="tour-details">
	<div class="info-tour">
		<h3>Du lịch miền Bắc: Hà Nội - Ninh Bình - Hạ Long – Sapa 6 ngày</h3>
		<div class="img-details fll">
			<img src="/Content/style/images/imgnews.jpg" alt="" />
		</div>
		<div class="tour-info">
			<div class="info-l fll">
				<p>Đơn giá:</p>
				<p>Thời gian:</p>
				<p>Ngày khởi hành:</p>
				<p>Khởi hành từ:</p>
				<p>Địa điểm tham quan:</p>
			</div>
			<div class="info-r fll">
				<p style="color: #f00">9.890.000 VNĐ</p>
				<p>06 ngày 05 đêm</p>
				<p>21/11/2012</p>
				<p>Hà Nội, Ninh Bình, Hạ Long, Sapa</p>
				<p>Tam Cốc, Bích Động, Cát Bà, Sapa</p>
			</div>
		</div><!-- tour-info -->
	</div><!-- info-tour -->
	<div class="clb"></div>
	<p>Sapa - một địa danh nổi tiếng từ thời pháp thuộc. Nơi đây đã từng trở thành điểm nghỉ dưỡng lý tưởng cho thực dân pháp tại Việt Nam. Đến với Sapa, quý khách sẽ có dịp tìm hiểu nét văn hóa dân tộc đặc trưng vùng cao. Một hoạt động mới trong chương trình du lịch, đó là trekking sẽ mang lại quý khách cảm xúc mới khi tham quan miền bắc.</p>
	<div class="clb"></div>
	<script type='text/javascript' src='/Content/js/webwidget_tab.js'></script>
		<script language="javascript" type="text/javascript">
			$(function () {
				$(".webwidget_tab").webwidget_tab({
				    window_padding: '10',
				    head_text_color: '#000',
				    head_current_text_color: '#000'
				});
			});
		</script>
	<div class="tabs-tour">
		<div class="webwidget_tab" id="webwidget_tab">
			<div class="tabContainer">
				<ul class="tabHead">
				    <li class="currentBtn"><a href="javascript:;">Giới thiệu tour</a></li>
				    <li><a href="javascript:;">Lịch trình</a></li>
				    <li><a href="javascript:;">Hình ảnh tour</a></li>
				    <li><a href="javascript:;">Bản đồ</a></li>
				    <li><a href="javascript:;">Đặt tour</a></li>
				</ul>
			</div>
			<div class="tabBody">
				<ul>
				    <li class="tabCot">
				        <p>Tam Cốc - Bích Động, còn được biết đến với những cái tên nổi tiếng như "vịnh Hạ Long trên cạn" hay "Nam thiên đệ nhị động" là một khu du lịch trọng điểm quốc gia Việt Nam.[1] Toàn khu vực bao gồm hệ thống các hang động núi đá vôi và các di tích lịch sử liên quan đến triều đại nhà Trần nằm chủ yếu ở xã Ninh Hải, Hoa Lư, Ninh Bình. Hiện nay, Quần thể danh thắng Tràng An - Tam Cốc được thủ tướng chính phủ Việt Nam xếp hạng là di tích quốc gia đặc biệt.</p>
				        <p class="img-dt"><img src="/Content/style/images/gt.png" alt="" /></p>
				        <p>Khu du lịch dtTam Cốc-Bích Động hiện có diện tích tự nhiên là 350,3 ha, nằm cách quốc lộ 1A 2 km, cách thành phố Ninh Bình 7 km, cách thị xã Tam Điệp 9 km. Toàn bộ ranh giới khu vực nằm trên 4 xã: Ninh Hải, Ninh Xuân, (Hoa Lư), xã Sơn Hà (Nho Quan) và xã Yên Sơn (thị xã Tam Điệp). Các trung tâm đón khách du lịch nằm rải rác ở 3 xã: Ninh Hải (Tam Cốc, Cố Viên Lầu, thung Nắng, thung Nham, chùa Bích Động); Ninh Xuân (hang Múa); Sơn Hà (hang Bụt, động Thiên Hà).</p>
				        <p class="img-dt"><img src="/Content/style/images/gt.png" alt="" /></p>
				        <p>Khu du lịch Tam Cốc-Bích Động hiện có diện tích tự nhiên là 350,3 ha, nằm cách quốc lộ 1A 2 km, cách thành phố Ninh Bình 7 km, cách thị xã Tam Điệp 9 km. Toàn bộ ranh giới khu vực nằm trên 4 xã: Ninh Hải, Ninh Xuân, (Hoa Lư), xã Sơn Hà (Nho Quan) và xã Yên Sơn (thị xã Tam Điệp). Các trung tâm đón khách du lịch nằm rải rác ở 3 xã: Ninh Hải (Tam Cốc, Cố Viên Lầu, thung Nắng, thung Nham, chùa Bích Động); Ninh Xuân (hang Múa); Sơn Hà (hang Bụt, động Thiên Hà).</p> 
				        <div class="clb"></div>
							<div class="follows1">
							    <div class="f-l fll"><img src="/Content/style/images/follows.jpg" /></div>
							    <div class="ontop">
							        <ul>
							            <li><a href="#"><img src="/Content/style/images/top.jpg" /></a></li>
							            <li><a href="#"><img src="/Content/style/images/email.jpg" /></a></li>
							            <li><a href="#"><img src="/Content/style/images/print.jpg" /></a></li>
							        </ul>
							    </div>
							</div><!--follows-->
			<div class="clb"></div>
				    </li>
				    <li class="tabCot">
				        <img src="/Content/style/images/lich.jpg" alt="" />
				    </li>
				    <li class="tabCot">     
					<script>
						jQuery(function () {
							jQuery('.zoom').hoverZoom(); // Default      
						});
					</script>	  

					<script src="/Content/js/jquery.fs.boxer.js"></script>
					<script>
						jQuery(document).ready(function () {
							jQuery(".boxer").not(".retina, .boxer_fixed, .boxer_top, .boxer_format, .boxer_mobile, .boxer_object").boxer();
						});
					</script>
				        <ul class="hinhanh">
				            <li><a href="/Content/style/images/slide.jpg" class="zoom boxer boxer_image" data-gallery="gallery"><img src="/Content/style/images/hinhanh.jpg" alt="" /></a></li>
				            <li><a href="#"><img src="/Content/style/images/hinhanh.jpg" alt="" /></a></li>
				            <li><a href="#"><img src="/Content/style/images/hinhanh.jpg" alt="" /></a></li>
				            <li><a href="#"><img src="/Content/style/images/hinhanh.jpg" alt="" /></a></li>
				            <li><a href="#"><img src="/Content/style/images/hinhanh.jpg" alt="" /></a></li>
				            <li><a href="#"><img src="/Content/style/images/hinhanh.jpg" alt="" /></a></li>
				            <li><a href="#"><img src="/Content/style/images/hinhanh.jpg" alt="" /></a></li>
				            <li><a href="#"><img src="/Content/style/images/hinhanh.jpg" alt="" /></a></li>
				            <li><a href="#"><img src="/Content/style/images/hinhanh.jpg" alt="" /></a></li>
				        </ul>
				    </li>
				    <li class="tabCot">
				        <div class="map"><img src="/Content/style/images/map.jpg" alt="" /></div>
				    </li>
				    <li class="tabCot">
				        <div class="datour">
				            <h4>thông tin khách hàng:</h4>
				            <div class="form-l fll">
				                <p>Họ và tên</p>
								<p>Địa chỉ</p>
								<p>Email</p>
								<p>Số điện thoại</p>
				            </div><!-- form-l -->
				            <div class="form-r fll">
				                <p><input type="text" class="inpt" /></p>	
				                <p><input type="text" class="inpt" /></p>	
				                <p><input type="text" class="inpt" /></p>	
				                <p><input type="text" class="inpt" /></p>	
				            </div><!-- form-r -->
				            <div class="clb"></div>
				            <h4>thông tin tour:</h4>
				            <div class="form-l fll">
				                <p>Tên tour</p>
								<p>Ngày đi</p>
								<p>Số người lớn</p>
								<p>Yêu cầu</p>
				            </div><!-- form-l -->
				            <div class="form-r fll">
				                <p><input type="text" class="inpt" /></p>	
				                <p><input id="date1"  class="tcal cal" name="date2" type="text" />Ngày về&nbsp;<input id="date2"  class="tcal cal1" name="date2" type="text" /></p>	
				                <p><input type="text" class="sl" />Trẻ từ 5 - 11 tuổi&nbsp;<input type="text" class="sl" />Trẻ dưới 5 tuổi&nbsp;<input type="text" class="sl1" /></p>	
				                <p><textarea name="" id="" cols="54" rows="8"></textarea></p>
				                <p><a href="#"><img src="/Content/style/images/dattour.png" alt="" /></a>&nbsp;&nbsp;&nbsp;<a href="#"><img src="/Content/style/images/reset.png" alt="" /></a></p>	
				            </div><!-- form-r -->
				        </div>
				    </li>

				</ul>
				<div style="clear:both"></div>
			</div>
			<div class="modBottom">
				<span class="modABL">&nbsp;</span><span class="modABR">&nbsp;</span>
			</div>
		</div>
	</div><!-- tabs-tour -->
	<div class="clb"></div>
	<div class="tour-other">
		<div class="title-tour"><p>Tour du lịch khác</p></div>
		<ul class="lq">
			<li>
				<div class="img-lq"><a href="#"><img src="/Content/style/images/tourkhac.jpg" alt="" /></a></div>
				<p class="tit-lq">Côn Đảo ngày nay - Thiên đường của biển</p>
				<p class="price">Đơn giá:1.200.000 VNĐ</p>
				<p>Khởi hành: Hà Nội</p>
				<p>Thời gian: 2Đ - 3N</p>
			</li>
			<li>
				<div class="img-lq"><a href="#"><img src="/Content/style/images/tourkhac.jpg" alt="" /></a></div>
				<p class="tit-lq">Côn Đảo ngày nay - Thiên đường của biển</p>
				<p class="price">Đơn giá:1.200.000 VNĐ</p>
				<p>Khởi hành: Hà Nội</p>
				<p>Thời gian: 2Đ - 3N</p>
			</li>
			<li>
				<div class="img-lq"><a href="#"><img src="/Content/style/images/tourkhac.jpg" alt="" /></a></div>
				<p class="tit-lq">Côn Đảo ngày nay - Thiên đường của biển</p>
				<p class="price">Đơn giá:1.200.000 VNĐ</p>
				<p>Khởi hành: Hà Nội</p>
				<p>Thời gian: 2Đ - 3N</p>
			</li>
			<li>
				<div class="img-lq"><a href="#"><img src="/Content/style/images/tourkhac.jpg" alt="" /></a></div>
				<p class="tit-lq">Côn Đảo ngày nay - Thiên đường của biển</p>
				<p class="price">Đơn giá:1.200.000 VNĐ</p>
				<p>Khởi hành: Hà Nội</p>
				<p>Thời gian: 2Đ - 3N</p>
			</li>
			<li>
				<div class="img-lq"><a href="#"><img src="/Content/style/images/tourkhac.jpg" alt="" /></a></div>
				<p class="tit-lq">Côn Đảo ngày nay - Thiên đường của biển</p>
				<p class="price">Đơn giá:1.200.000 VNĐ</p>
				<p>Khởi hành: Hà Nội</p>
				<p>Thời gian: 2Đ - 3N</p>
			</li>
			<li>
				<div class="img-lq"><a href="#"><img src="/Content/style/images/tourkhac.jpg" alt="" /></a></div>
				<p class="tit-lq">Côn Đảo ngày nay - Thiên đường của biển</p>
				<p class="price">Đơn giá:1.200.000 VNĐ</p>
				<p>Khởi hành: Hà Nội</p>
				<p>Thời gian: 2Đ - 3N</p>
			</li>
			<li>
				<div class="img-lq"><a href="#"><img src="/Content/style/images/tourkhac.jpg" alt="" /></a></div>
				<p class="tit-lq">Côn Đảo ngày nay - Thiên đường của biển</p>
				<p class="price">Đơn giá:1.200.000 VNĐ</p>
				<p>Khởi hành: Hà Nội</p>
				<p>Thời gian: 2Đ - 3N</p>
			</li>
			<li>
				<div class="img-lq"><a href="#"><img src="/Content/style/images/tourkhac.jpg" alt="" /></a></div>
				<p class="tit-lq">Côn Đảo ngày nay - Thiên đường của biển</p>
				<p class="price">Đơn giá:1.200.000 VNĐ</p>
				<p>Khởi hành: Hà Nội</p>
				<p>Thời gian: 2Đ - 3N</p>
			</li>

		</ul>
	</div><!-- tour-other -->
</div><!-- tour-details -->

<%--<div class="title"><%= ViewPage.CurrentPage.Name %></div>

<div class="item">
    <p class="item-id">ID : <%= item.ID %></p>
    <p class="item-menuid">Chuyên mục : <%= item.getMenu().Name %></p>
    <p class="item-state">Vị trí : <%= string.Format("{0:#,##0}", item.State) %></p>
    <p class="item-name">Tên : <%= item.Name %></p>
    <p class="item-code">Mã : <%= item.Code %></p>
    <p class="item-tags">Tags : <%= item.Tags %></p>
    <p class="item-summary">Tóm tắt : <%= item.Summary %></p>
    <p class="item-price">Giá : <%= string.Format("{0:#,##0}", item.Price) %></p>
    <p class="item-saleprice">Sale price : <%= string.Format("{0:#,##0}", item.SalePrice) %></p>
    <p class="item-timetotal">Time total : <%= item.TimeTotal %></p>
    <p class="item-startdate">Start date : <%= item.StartDate %></p>
    <p class="item-schedule">Schedule : <%= item.Schedule %></p>
    <p class="item-locations">Locations : <%= item.Locations %></p>
    <p class="item-content">Nội dung : <%= item.Content %></p>
    <p class="item-scheduledetail">Schedule detail : <%= item.ScheduleDetail %></p>
    <p class="item-file">Ảnh : <%= item.File %></p>
    <p class="item-map">Map : <%= item.Map %></p>
    <p class="item-activity">Duyệt : <%= item.Activity ? "Có" : "Không" %></p>
</div>

<div class="list-other">
<%for(int i = 0; listOther != null && i < listOther.Count; i++)
{
string Url = ViewPage.GetURL(listOther[i].MenuID, listOther[i].Code);%>
    <p class="list-other-name"><a href="<%=Url %>"><%= listOther[i].Name %></a></p>
    <p class="list-other-img"><a href="<%=Url %>">
                    <%if (!string.IsNullOrEmpty(listOther[i].File))
                      { %><img src="<%= Utils.GetResizeFile(listOther[i].File, 2, 100, 100)%>" alt="<%= listOther[i].Name %>" /><%} %></a></p>
<%}%>
</div>--%>
