<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl"%>

<% 
    var item = ViewBag.Data as ModTourEntity;
    var listOther = ViewBag.Other as List<ModTourEntity>;
%>

<div class="title"><%= ViewPage.CurrentPage.Name %></div>

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
</div>
