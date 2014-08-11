<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl"%>

<% 
    var item = ViewBag.Data as ModOrderEntity;
    var listOther = ViewBag.Other as List<ModOrderEntity>;
%>

<div class="title"><%= ViewPage.CurrentPage.Name %></div>

<div class="item">
    <p class="item-id">ID : <%= item.ID %></p>
    <p class="item-customername">Customer name : <%= item.CustomerName %></p>
    <p class="item-customeraddress">Customer address : <%= item.CustomerAddress %></p>
    <p class="item-customeremail">Customer email : <%= item.CustomerEmail %></p>
    <p class="item-cusomerphone">Cusomer phone : <%= item.CusomerPhone %></p>
    <p class="item-tourid">Tour : <%= item.getTour().Name %></p>
    <p class="item-tourname">Tour name : <%= item.TourName %></p>
    <p class="item-startdate">Start date : <%= string.Format("{0:dd/MM/yyyy HH:mm}", item.StartDate) %></p>
    <p class="item-enddate">End date : <%= string.Format("{0:dd/MM/yyyy HH:mm}", item.EndDate) %></p>
    <p class="item-adults">Adults : <%= string.Format("{0:#,##0}", item.Adults) %></p>
    <p class="item-children1">Children1 : <%= string.Format("{0:#,##0}", item.Children1) %></p>
    <p class="item-children2">Children2 : <%= string.Format("{0:#,##0}", item.Children2) %></p>
    <p class="item-comment">Comment : <%= item.Comment %></p>
</div>

<div class="list-other">
<%for(int i = 0; listOther != null && i < listOther.Count; i++)
{
string Url = ViewPage.GetURLCurrentPage(listOther[i].ID.ToString());%>
<%}%>
</div>
