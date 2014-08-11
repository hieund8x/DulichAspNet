<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.CPViewControl" %>

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
                    <input class="text_input" type="text" name="Name" id="Name" value="<%=entity.Name %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Mã:</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Code" id="Code" value="<%=entity.Code %>" maxlength="255" />
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
                    <input class="text_input" type="text" name="TimeTotal" id="TimeTotal" value="<%=entity.TimeTotal %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Khởi hành:</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="StartDate" id="StartDate" value="<%=entity.StartDate %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Lịch trình :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Schedule" id="Schedule" value="<%=entity.Schedule %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Địa điểm tham quan:</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Locations" id="Locations" value="<%=entity.Locations %>" maxlength="255" />
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
                    <%= Utils.GetMedia(entity.File, 100, 80)%> <br />
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

</form>