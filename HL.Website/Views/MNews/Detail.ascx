<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl"%>

<% 
    var item = ViewBag.Data as ModNewsEntity;
    var listOther = ViewBag.Other as List<ModNewsEntity>;
%>

<div class="tit-news">
	<div class="news-l fll"></div>
	<div class="news-ct fll">
		<p><%=item.Name %></p>
	</div>
	<div class="news-r fll"></div>
</div><!--tit-news-->
<div class="hot-news">
	<div class="img-hot fll"><a href="javascript:void(0);"><img src="<%=Utils.GetResizeFile(item.File, 2, 167, 112)%>" alt="" /></a></div>
	<%--<h3><a href="#"><%=item.Name %></a></h3>--%>
	<p class="date"><%=Utils.DayOfWeekVN(item.Published) %>, <%=string.Format("{0:dd-MM-yyyy}", item.Published) %></p>
	<p><b><%=item.Summary %></b></p>
</div>
<div class="clb"></div>
    <%=item.Content %>
<div class="clb"></div>
				<div class="follows">
				    <div class="f-l fll"><img src="/Content/style/images/follows.jpg" /></div>
				    <div class="ontop">
				        <ul>
				            <li><a href="#"><img src="/Content/style/images/top.jpg" /></a></li>
				        </ul>
				    </div>

				</div><!--follows-->
<div class="clb"></div>
<%if(listOther!=null && listOther.Count>0 ){ %>
<div class="other">
	<h4>CÁC TIN TỨC LIÊN QUAN</h4>
	<ul>
        <%for (int i = 0; listOther.Count<=5 ? i < listOther.Count : i<5; i++)
          { %>
		<li><a href="<%=ViewPage.GetURL(listOther[i].MenuID,listOther[i].Code) %>" class="active"><%=listOther[i].Name %></a><span class="date">(<%=Utils.DayOfWeekVN(listOther[i].Published) %>, <%= string.Format("{0:dd-MM-yyyy}", listOther[i].Published) %>)</span></li>
        <%} %>
	</ul>
</div>
<%} %>

<%--<p class="link">
   <a href="/"><span>{RS:Web_HOME}</span></a><span>></span> 
   <%= Utils.GetMapPage(ViewPage.CurrentPage, "<span>></span>")%>
</p>

<div class="news-flash">
    <h4><a href="#"><%=item.Name%></a></h4>
    <%if (!string.IsNullOrEmpty(item.File))
    { %><a href="#"><img src="<%=Utils.GetResizeFile(item.File, 2, 194, 0)%>" alt="" /></a><%} %>
    <p><%=item.Summary%></p>
    <p>&nbsp;</p>
    <p><%=item.Content%></p>
    <p> Tags : 
       <% if (!string.IsNullOrEmpty(item.Tags))
       {
           string[] ArrTag = item.Tags.Split(',');%>
            <%for (int i = 0; i < ArrTag.Length; i++)
            {
                ArrTag[i] = ArrTag[i].Trim();%>
                <%if (i > 0)
                { %> , <%} %>
                <a href="<%= ViewPage.GetURL("Tag", Data.GetCode(ArrTag[i])) %>" title="<%= ArrTag[i] %>"><%= ArrTag[i]%></a>
            <%} %>
       <%} %>
    </p>
</div>
<p class="clear_10"></p>--%>

<%--<ul>
    <%for (int i = 0; listOther != null && i < listOther.Count; i++)
    {
        string Url = ViewPage.GetURL(listOther[i].MenuID, listOther[i].Code);
        %>
    <li class="icon_c"><a href="<%=Url %>"> <%=listOther[i].Name%> </a></li>
    <%} %>
</ul>--%>