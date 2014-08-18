<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl"%>

<%
    var listItem = ViewBag.Data as List<ModTourEntity>;
    var model = ViewBag.Model as MTourModel;
    var parentPage = SysPageService.Instance.CreateQuery()
                    .Where(o=> o.Activity==true)
                    .Where(o => o.ID == ViewPage.CurrentPage.ParentID).ToSingle_Cache();
%>

<div class="tit-tour">
	<ul class="">
        <%--<%if(parentPage!=null && parentPage.ParentID>0){ %>
            <li>
            <a href="<%=ViewPage.GetPageURL(parentPage) %>"><span><%=parentPage.Name %></span>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&gt;</a>
            </li>
        <%} %>--%>
		<li>
            <a href="/">Trang chủ</a>
		</li>
        <%=ViewPage.CurrentPage.getBC() %>
	</ul>
<div class="tab_container2">
	<div style="margin-top:15px;" id="tab12" class="tab_content2">
        <%if(listItem!=null && listItem.Count>0){ %>
		<table class="table" cellpadding="0" cellspacing="0">
			<tr>
				<th>Điểm đến</th>
				<th>Giá từ</th>
				<th>Số ngày</th>
				<th>Ngày đi</th>
				<th>Phương tiện</th>
				<th></th>
			</tr>
            <%for (int i = 0; i < listItem.Count;i++ ){ %>
			<tr>
				<td><a href="<%=ViewPage.GetURL(listItem[i].MenuID,listItem[i].Code) %>"><%=listItem[i].Name %></a></td>
				<td>
                    <%if(listItem[i].SalePrice>0){ %>
                        <span style="text-decoration:line-through;"><%= string.Format("{0:#,##0}", listItem[i].Price)%> vnđ</span><br />
                        <b style="color:red;"><%= string.Format("{0:#,##0}", listItem[i].SalePrice)%> vnđ</b>
                    <%}else{ %>
                        <b style="color:red;"><%= string.Format("{0:#,##0}", listItem[i].Price)%> vnđ</b>
                    <%} %>

				</td>
				<td><%=listItem[i].TimeTotal %></td>
				<td><%=listItem[i].StartDate %></td>
				<td><%=listItem[i].Vehicle %></td>
				<td>
					<a href="<%=ViewPage.GetURL(listItem[i].MenuID,listItem[i].Code) %>"><img src="/Content/style/images/dat.png" alt="" /></a>
				</td>
			</tr>	
            <%} %>			
		</table>

		<div class="clb"></div>
		<div class="page">
			<ul>
				<%= GetPagination(model.Page, model.PageSize, model.TotalRecord)%>
			</ul>
		</div>
        <%}else{ %>
        <div style="margin:20px 10px;">
            {RS:Page_NoContent}
        </div>
        <%} %>
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
