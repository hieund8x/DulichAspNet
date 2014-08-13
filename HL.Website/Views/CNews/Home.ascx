<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl" %>

<%
    var listItem = ViewBag.Data as List<ModNewsEntity>;
%>

<% if(listItem!=null && listItem.Count>0){ %>
<div class="tabs-news">
	<ul class="tabs1">
		<li><a href="#tab11"><span><%=ViewBag.Title%></span></a></li>
	</ul>
<div class="tab_container1">
	<div id="tab11" class="tab_content1">
		<div class="cols-l fll">
			<ul class="nav-kn">
                <%for(int i=0;listItem.Count<=2 ? i<listItem.Count : i<2;i++){ %>
			    <li>
			        <div class="img-kn fll"><a href="<%=ViewPage.GetURL(listItem[i].MenuID,listItem[i].Code) %>"><img src="<%=Utils.GetResizeFile(listItem[i].File, 2, 125, 92)%>" alt="" /></a></div>
					<p><a href="<%=ViewPage.GetURL(listItem[i].MenuID,listItem[i].Code) %>"><%=listItem[i].Name %></a></p>
					<p><%=listItem[i].Summary %></p>
			    </li>
                <%} %>
			</ul>
		</div><!--cols-l-->
		<div class="cols-r fll">
            <%if(listItem.Count>2){ %>
			<ul class="nav-cols">
                <%for(int j=2;j<listItem.Count;j++){ %>
			    <li><a href="<%=ViewPage.GetURL(listItem[j].MenuID,listItem[j].Code) %>" class="active"><%=listItem[j].Name %></a><span class="date"> (<%=Utils.DayOfWeekVN(listItem[j].Published) %>, <%=string.Format("{0:dd-MM-yyyy}", listItem[j].Published) %>)</span></li>
                <%} %>
			</ul>
            <%} %>
		</div><!--cols-r-->
	</div>
</div>
</div><!--tabs-news-->
<%}%>
<%--<div class="box_new_l">
    <div class="title">
        <h2><%=ViewBag.Title%></h2>
    </div>
    <%for (int i = 0; listItem != null && i < listItem.Count && i < 1;i++ )
    {
        string Url = ViewPage.GetURL(listItem[i].MenuID, listItem[i].Code);
        %>
    <div class="box-fix">
        <div class="kgs_title">
            <a href="<%=Url %>"><%=listItem[i].Name%></a>
        </div>
        <div>
            <%if (!string.IsNullOrEmpty(listItem[i].File))
              { %>
              <img class="stdo_img_new" src="<%=Utils.GetResizeFile(listItem[i].File, 2, 90, 80)%>" />
            <%} %>
        </div>
        <div class="stdo_content">
            <%=listItem[i].Summary%>
        </div>
    </div><%} %>
    <div class="list_box_new_l">
        <ul><%for (int i = 1; listItem != null && i < listItem.Count;i++ ){
        string Url = ViewPage.GetURL(listItem[i].MenuID, listItem[i].Code);
        %>
            <li class="icon_c"><a href="<%=Url %>"><%=listItem[i].Name%></a></li><%} %>
        </ul>
    </div>
</div>--%>