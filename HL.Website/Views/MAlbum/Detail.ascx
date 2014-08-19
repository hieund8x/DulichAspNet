<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl"%>

<% 
    var item = ViewBag.Data as ModAlbumEntity;
    var listOther = ViewBag.Other as List<ModAlbumEntity>;
    var listDetail = ModAlbumDetailService.Instance.CreateQuery()
                          .Where(o => o.Activity == true)
                          .Where(o => o.AlbumID == item.ID)
                          .ToList_Cache();
    int coutnImgs = listDetail.Count;
%>

<div class="tit-news">
					<div class="news-l1 fll"></div>
					<div class="news-ct fll">
						<ul>
                            <%=ViewPage.CurrentPage.getBC() %>
						</ul>
					</div>
					<div class="news-r fll"></div>
				</div><!--tit-news-->
				<ul class="nav-albumss">
					<h4><a href="#" style="color: #333; line-height: 30px"><%=item.Name %></a></h4>
					<p class="date"><%=coutnImgs %> ảnh - Ngày đăng: <%=string.Format("{0:dd-MM-yyyy}", item.Publisher) %></p>
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
                    <%for(int i=0;coutnImgs>0 && i<coutnImgs;i++){ %>
					<li><div class="khung1"><a href="<%=Utils.GetResizeFile(listDetail[i].File, 2, 1280, 720)%>" class="zoom boxer boxer_image" data-gallery="gallery"><img src="<%=Utils.GetResizeFile(listDetail[i].File, 2, 196, 144)%>" alt="" /></a></div></li>
                    <%} %>
					
				</ul>
				<div class="clb"></div>

<%--<div class="title"><%= ViewPage.CurrentPage.Name %></div>

<div class="item">
    <p class="item-id">ID : <%= item.ID %></p>
    <p class="item-menuid">Chuyên mục : <%= item.getMenu().Name %></p>
    <p class="item-state">Vị trí : <%= string.Format("{0:#,##0}", item.State) %></p>
    <p class="item-name">Tên : <%= item.Name %></p>
    <p class="item-code">Mã : <%= item.Code %></p>
    <p class="item-content">Nội dung : <%= item.Content %></p>
    <p class="item-file">Ảnh : <%= item.File %></p>
    <p class="item-publisher">Publisher : <%= string.Format("{0:dd/MM/yyyy HH:mm}", item.Publisher) %></p>
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
