<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl" %>

<% var listItem = ViewBag.Data as List<ModAdvEntity>; %>

<div class="ads">
	<a href="#"><img src="/Content/style/images/ads.jpg" alt="" /></a>
</div>
<div class="ads">
	<a href="#"><img src="/Content/style/images/ads.jpg" alt="" /></a>
</div>

<%--<p class="advert">
<%for (int i = 0; listItem != null && i < listItem.Count; i++ )
{ %>
  <%= Utils.GetCodeAdv(listItem[i])%>
<%} %>
</p>--%>