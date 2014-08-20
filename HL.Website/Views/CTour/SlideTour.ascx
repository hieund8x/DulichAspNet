<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl" %>

<%
    var listItem = ViewBag.Data as List<ModTourEntity>;
%>
<script type="text/javascript" src="/Content/js/number_slideshow.js"></script>
<script type="text/javascript">6 
    $(function () {
        $("#number_slideshow1").number_slideshow({
            slideshow_autoplay: 'enable',//enable disable
            slideshow_time_interval: 5000,
            slideshow_transition_speed: 'slow',//'normal','slow','fast' or numeral
            slideshow_window_background_color: "#CCFFCC",
            slideshow_window_padding: '0',
            slideshow_window_width: '1000',
            slideshow_window_height: '317',
            slideshow_button_current_text_color: '#fff',
            slideshow_border_size: '0',
            slideshow_border_color: '#006600',
            slideshow_show_button: 'disable',//enable disable
            slideshow_show_title: 'enable',//enable disable
            slideshow_button_text_color: '#FFF',
            slideshow_button_background_color: '#66CC00',
            slideshow_button_current_background_color: '#006600',
            slideshow_button_border_color: '#006600',
            //slideshow_loading_gif: 'loading.gif',//loading pic, you can replace it use youself gif.
            slideshow_button_border_size: '0'
        });

    });
</script>
<div class="slide">
	<div id="number_slideshow1" class="number_slideshow">
            <ul>
                <%for(int i=0;listItem!=null && i<listItem.Count;i++){ %>
                <li><a href="<%=ViewPage.GetURL(listItem[i].MenuID,listItem[i].Code) %>" ><img src="<%=Utils.GetResizeFile(listItem[i].File, 2, 1000, 317)%>" width="1000" height="317" alt="<%=listItem[i].Name %>" /></a></li>
                <%} %>
            </ul>
            <ul class="number_slideshow_nav">
                <%for(int i=0;listItem!=null && i<listItem.Count;i++){ %>
                <li><a href="#"><%=(i+1) %></a></li>
                <%} %>
            </ul>
            <div style="clear: both"></div>
        <script>
            //Show button slie
            $(document).ready(function () {
                $('.number_slideshow_nav').css('display', 'block');
            });
        </script>
        </div>
</div>

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

