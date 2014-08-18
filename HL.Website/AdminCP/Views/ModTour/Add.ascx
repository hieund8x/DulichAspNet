﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.CPViewControl" %>

<%
    var model = ViewBag.Model as ModTourModel;
    var entity = ViewBag.Data as ModTourEntity;
%>

<script type="text/javascript" src="/{CPPath}/Content/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
    CKFinder.setupCKEditor(null, '/{CPPath}/Content/ckfinder/');
</script>

<form id="hlForm" name="hlForm" method="post">
<input type="hidden" id="_hl_action" name="_hl_action" />

<div id="toolbar-box">
    <div class="t"><div class="t"><div class="t"></div></div></div>
    <div class="m">
        <div class="toolbar-list" id="toolbar">
            <%= GetDefaultAddCommand()%>
        </div>
        <div class="pagetitle icon-48-generic">
            <h2>Tour : <%=  model.RecordID > 0 ? "Chỉnh sửa" : "Thêm mới"%></h2>
        </div>
        <div class="clr"></div>
    </div>
    <div class="b"><div class="b"><div class="b"></div></div></div>
</div>
<div class="clr"></div>

<%= ShowMessage()%>

<script type="text/javascript">
    window.addEvent('domready', function () { new Accordion($$('div#content-sliders-.pane-sliders > .panel > h3.pane-toggler'), $$('div#content-sliders-.pane-sliders > .panel > div.pane-slider'), { onActive: function (toggler, i) { toggler.addClass('pane-toggler-down'); toggler.removeClass('pane-toggler'); i.addClass('pane-down'); i.removeClass('pane-hide'); Cookie.write('jpanesliders_content-sliders-', $$('div#content-sliders-.pane-sliders > .panel > h3').indexOf(toggler)); }, onBackground: function (toggler, i) { toggler.addClass('pane-toggler'); toggler.removeClass('pane-toggler-down'); i.addClass('pane-hide'); i.removeClass('pane-down'); if ($$('div#content-sliders-.pane-sliders > .panel > h3').length == $$('div#content-sliders-.pane-sliders > .panel > h3.pane-toggler').length) Cookie.write('jpanesliders_content-sliders-', -1); }, duration: 300, opacity: false, alwaysHide: true }); });
</script>
<%if (model.RecordID > 0)
  { %>
<script type="text/javascript">
    document.switcher = null;
    window.addEvent('domready', function () {
        toggler = document.id('submenu');
        element = document.id('tab-document1');
        if (element) {
            document.switcher = new JSwitcher(toggler, element, { cookieName: "app1" });
        }
    });
</script>
<%} %>
<div id="submenu-box">
    <div class="t">
        <div class="t">
            <div class="t">
            </div>
        </div>
    </div>
    <div class="m">
        <div class="submenu-box">
            <div class="submenu-pad">
                <ul id="submenu" class="configuration">
                    <li><a id="tab2" class="active">Tour</a></li>
                    <%if (model.RecordID > 0)
                      { %>
                    <li><a id="tab1">Hình ảnh Tour</a></li>
                    <%} %>
                </ul>
                <div class="clr">
                </div>
            </div>
        </div>
        <div class="clr">
        </div>
        <div class="clr">
        </div>
    </div>
    <div class="b">
        <div class="b">
            <div class="b">
            </div>
        </div>
    </div>
</div>
<div id="tab-document1" class="col width-100">
    <div id="page-tab2" class="tab">

<div id="element-box">
    <div class="t"><div class="t"><div class="t"></div></div></div>
    <div class="m">
        <div class="col width-100">
          <table class="admintable">
            <tr>
                <td class="key">
                    <label>Loại Tour :</label>
                </td>
                <td>
                     <select name="MenuID" id="MenuID" class="text_input">
                         <option value="0">Chọn loại Tour</option>
                         <%= Utils.ShowDDLMenuByType("Tour", model.LangID, entity.MenuID)%> 
                    </select>
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Vị trí :</label>
                </td>
                <td>
                    <%= Utils.ShowCheckBoxByConfigkey("Mod.TourState", "ArrState", entity.State)%>
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Tên Tour:</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Name" id="Name" value="<%=entity.Name %>" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Mã:</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Code" id="Code" value="<%=entity.Code %>" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Tóm tắt/Giới thiệu:</label>
                </td>
                <td>
                    <textarea class="text_input" style="height:100px" name="Summary" id="Summary" ><%=entity.Summary %></textarea>
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Giá:</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Price" id="Price" value="<%=entity.Price %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Giá Khuyến Mại:</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="SalePrice" id="SalePrice" value="<%=entity.SalePrice %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Thời gian:</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="TimeTotal" id="TimeTotal" value="<%=entity.TimeTotal %>"/>
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Khởi hành:</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="StartDate" id="StartDate" value="<%=entity.StartDate %>" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Lịch trình :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Schedule" id="Schedule" value="<%=entity.Schedule %>" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Địa điểm tham quan:</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Locations" id="Locations" value="<%=entity.Locations %>" />
                </td>
            </tr>
            <tr>
                <td class="key">
                    <label>Nội dung :</label>
                </td>
                <td class="content">
                    <textarea class="ckeditor" style="width:100%;height:500px" name="Content" id="Content"><%=entity.Content%></textarea>
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Lịch trình cụ thể:</label>
                </td>
                <td>
                    <textarea class="ckeditor" style="width:100%;height:500px" name="ScheduleDetail" id="ScheduleDetail"><%=entity.ScheduleDetail%></textarea>
                </td>
            </tr
            <tr>
                <td class="key">
                    <label>Phương tiện:</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Vehicle" id="Vehicle" value="<%=entity.Vehicle %>"/>

                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Ảnh:</label>
                </td>
                <td>
                    <%= Utils.GetMedia(entity.File, 100, 80)%> <br />
                    <input class="text_input" type="text" name="File" id="File" style="width:80%;" value="<%=entity.File %>" maxlength="255" />
                    <input class="text_input" style="width:17%;" type="button" onclick="ShowFileForm('File');return false;" value="Chọn Ảnh" />
                </td>
            </tr>
              <tr>
                <td class="key">
                    <label>Ảnh Slide:</label>
                </td>
                <td>
                    <%= Utils.GetMedia(entity.Img_Slide, 200, 80)%> <br />
                    <input class="text_input" type="text" name="Img_Slide" id="Img_Slide" style="width:80%;" value="<%=entity.Img_Slide %>" maxlength="255" />
                    <input class="text_input" style="width:17%;" type="button" onclick="ShowFileForm('Img_Slide'); return false;" value="Chọn Ảnh Slide" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Bản đồ:</label>
                </td>
                <td>
                    <textarea class="text_input" style="height:100px" name="Map" id="Map" ><%=entity.Map %></textarea>
                </td>
            </tr>
            <%if(CPViewPage.UserPermissions.Approve) {%>
            <tr>
                <td class="key">
                    <label>Duyệt:</label>
                </td>
                <td>
                    <input name="Activity" <%= entity.Activity ? "checked" : "" %> type="radio" value='1' /> Có
                    <input name="Activity" <%= !entity.Activity ? "checked" : "" %> type="radio" value='0' /> Không
                </td>
            </tr>
            <%} %>
          </table>
        </div>                
        <div class="clr"></div>
    </div>
    <div class="b"><div class="b"><div class="b"></div></div></div>
</div>

</div>
    <%if (model.RecordID > 0)
      { %>
    <div id="page-tab1" class="tab">
        <iframe src="/AdminCP/FormImagesTour/Index.aspx/TourID/<%=model.RecordID %>"
            style='position: static; top: 240px; left: 0px; width: 101%; height: 1100px;
            z-index: 999; overflow: auto;' frameborder='no'></iframe>
    </div>
    <%} %>

</form>