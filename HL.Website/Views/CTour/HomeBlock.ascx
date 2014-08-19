<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl" %>

<%
    var listItem = ViewBag.Data as List<ModTourEntity>;
    int MenuID = ViewBag.MenuID;
    var listPage = SysPageService.Instance.CreateQuery()
                                          .Where(o=>o.Activity==true)
                                          .Where(MenuID>0, o => o.MenuID == MenuID)
                                          .ToList_Cache();
%>

<div class="title">
    <%if(listPage!=null && listPage.Count>0){ %>
    <p><a href="<%=ViewPage.GetPageURL(listPage[0]) %>"><%=listPage[0].Name %></a></p>
    <%var listChildPage = SysPageService.Instance.GetByParent_Cache(listPage[0].ID);
      if(listChildPage!=null && listChildPage.Count>0){
       %>
    <ul>
        <%for(int i=0;i<listChildPage.Count;i++){ %>
		<li><a href="<%=ViewPage.GetPageURL(listChildPage[i]) %>"><%=listChildPage[i].Name %></a></li>
        <%} %>
	</ul>
    <%}}else{
     %>
	<p><a href="#"><%=ViewBag.Title!=null ? ViewBag.Title : "" %></a></p>
    <%} %>
	
</div>
<ul class="nav-tour">
    <%for(int i=0;listItem.Count!=null && i<listItem.Count;i++){ %>
	<li <%if(i!=0 && ((i+1)%3==0)){ %> class="last"<%} %> >
		<div class="img-tour"><a href="<%=ViewPage.GetURL(listItem[i].MenuID,listItem[i].Code) %>"><img src="<%=Utils.GetResizeFile(listItem[i].File, 2, 208, 153)%>" alt="" /></a></div>
		<h3><a href="<%=ViewPage.GetURL(listItem[i].MenuID,listItem[i].Code) %>"><%=listItem[i].Name %></a></h3>
        <p>Giá:
            <%if (listItem[i].SalePrice > 0)
              { %>
                        <span style="text-decoration:line-through;"><%= string.Format("{0:#,##0}", listItem[i].Price)%> vnđ</span>
                        <span style="color:red;"><%= string.Format("{0:#,##0}", listItem[i].SalePrice)%> vnđ</span>
                    <%}else{ %>
                        <span style="color:red;"><%= string.Format("{0:#,##0}", listItem[i].Price)%> vnđ</span>
                    <%} %>
        </p>
		<p><%=listItem[i].TimeTotal %> (<%=listItem[i].Vehicle %>)</p>
		<p>KHỞI HÀNH: <%=listItem[i].StartDate %></p>
		<p><a href="<%=ViewPage.GetURL(listItem[i].MenuID,listItem[i].Code) %>"><img src="/Content/style/images/dt.png" alt="" /></a></p>
	</li>
    <%} %>
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

