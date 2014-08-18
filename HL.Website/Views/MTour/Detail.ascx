<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl"%>

<% 
    var item = ViewBag.Data as ModTourEntity;
    var listOther = ViewBag.Other as List<ModTourEntity>;
%>

<div class="tit-tour">
	<ul>
		<%--<li><a href="#">Tour trong nước</a></li>
		<li><a href="#">tour miền bắc</a></li>--%>
        <li>
            <a href="/">Trang chủ</a>
		</li>
        <%=ViewPage.CurrentPage.getBC() %>
	</ul>
</div>
<!-- tit-tour -->
<div class="tour-details">
	<div class="info-tour">
		<h3><%=item.Name %></h3>
		<div class="img-details fll">
			<img src="<%=Utils.GetResizeFile(item.File, 2, 167, 112)%>" alt="" />
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
				<p> 
                    <%if(item.SalePrice>0){ %>
                        <span style="text-decoration:line-through;"><%= string.Format("{0:#,##0}", item.Price)%> vnđ</span>
                        <span style="color:red;"><%= string.Format("{0:#,##0}", item.SalePrice)%> vnđ</span>
                    <%}else{ %>
                        <span style="color:red;"><%= string.Format("{0:#,##0}", item.Price)%> vnđ</span>
                    <%} %>
                   
				</p>
				<p><%=item.TimeTotal %></p>
				<p><%=item.StartDate %></p>
				<p><%=item.Schedule %></p>
				<p><%=item.Locations %></p>
			</div>
		</div><!-- tour-info -->
	</div><!-- info-tour -->
	<div class="clb"></div>
	<div>
        <%=item.Summary %>
	</div>
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
				        <%=item.Content %>
				        <div class="clb"></div>
							<div class="follows1">
							    <div class="f-l fll"><img src="/Content/style/images/follows.jpg" /></div>
							    <div class="ontop">
							        <ul>
							            <li><a href="#"><img src="/Content/style/images/top.jpg" /></a></li>
							        </ul>
							    </div>
							</div><!--follows-->
			<div class="clb"></div>
				    </li>
				    <li class="tabCot">
				        <%=item.ScheduleDetail %>
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
                        <%var listImgs = ModImagesTourService.Instance.CreateQuery()
                                                                      .Where(o => o.Activity == true)
                                                                      .Where(o => o.TourID == item.ID)
                                                                      .ToList_Cache();       
                        if(listImgs!=null && listImgs.Count>0){
                        %>
				        <ul class="hinhanh">
                            <%for(int i=0;i<listImgs.Count;i++){ %>
				            <li><a href="<%=Utils.GetResizeFile(listImgs[i].File, 2, 0, 0)%>" class="zoom boxer boxer_image" data-gallery="gallery"><img src="<%=Utils.GetResizeFile(listImgs[i].File, 2, 199, 140)%>" alt="" /></a></li>
				            <%} %>
				        </ul>
                        <%} %>
				    </li>
				    <li class="tabCot">
				        <div class="map">
                            <%=item.Map %>
				        </div>
				    </li>
				    <li class="tabCot">
				        <div class="datour">
                            <form method="post">
				                <h4>thông tin khách hàng:</h4>
				                <div class="form-l fll">
				                    <p>Họ và tên</p>
								    <p>Địa chỉ</p>
								    <p>Email</p>
								    <p>Số điện thoại</p>
				                </div><!-- form-l -->
				                <div class="form-r fll">
				                    <p><input type="text" name="HoTen" class="inpt" /></p>	
				                    <p><input type="text" name="DiaChi" class="inpt" /></p>	
				                    <p><input type="text" name="Email" class="inpt" /></p>	
				                    <p><input type="text" name="Sdt" class="inpt" /></p>	
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
				                    <p><input type="text" readonly="readonly" name="Tour" class="inpt" value="<%=item.Name %>" /></p>	
				                    <p><input id="date1"  class="tcal cal" name="date1" type="text" />Ngày về&nbsp;<input id="date2"  class="tcal cal1" name="date2" type="text" /></p>	
				                    <p><input type="text" name="SoNguoiLon" class="sl" />Trẻ từ 5 - 11 tuổi&nbsp;<input type="text" name="TreTren5" class="sl" />Trẻ dưới 5 tuổi&nbsp;<input type="text" name="TreDuoi5" class="sl1" /></p>	
				                    <p><textarea name="YeuCau" id="" cols="54" rows="8"></textarea></p>
				                    <p><input type="submit" class="form-btn" name="_hl_action[AddOrder]" value="Đặt Tour" />&nbsp;&nbsp;&nbsp;<input type="reset" class="form-btn" value="Nhập lại" /></p>	
				                </div><!-- form-r -->
                            </form>
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
        <%if(listOther!=null && listOther.Count>0){ %>
		<div class="title-tour"><p>Tour du lịch khác</p></div>
		<ul class="lq">
            <%for(int i=0;i<listOther.Count;i++){ %>
			<li>
				<div class="img-lq"><a href="#"><img src="<%=Utils.GetResizeFile(listOther[i].File, 2, 142, 92)%>" alt="" /></a></div>
				<p class="tit-lq"><%=listOther[i].Name %></p>
				<p class="price">Đơn giá: 
                    <%if (listOther[i].SalePrice > 0) { %>
                        <b style="color:red;"><%= string.Format("{0:#,##0}", listOther[i].SalePrice)%> vnđ</b>
                    <%}else{ %>
                        <b style="color:red;"><%= string.Format("{0:#,##0}", listOther[i].Price)%> vnđ</b>
                    <%} %>
				</p>
				<p>Thời gian: <%=listOther[i].TimeTotal %></p>
			</li>
			<%} %>
		</ul>
	</div><!-- tour-other -->
    <%} %>
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
