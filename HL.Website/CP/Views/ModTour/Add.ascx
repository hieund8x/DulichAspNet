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
                    <label>Chuyên mục :</label>
                </td>
                <td>
                     <select name="MenuID" id="MenuID" class="text_input">
                         <option value="0">Root</option>
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
                    <label>Tên :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Name" id="Name" value="<%=entity.Name %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Mã :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Code" id="Code" value="<%=entity.Code %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Tags :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Tags" id="Tags" value="<%=entity.Tags %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Tóm tắt :</label>
                </td>
                <td>
                    <textarea class="text_input" style="height:100px" name="Summary" id="Summary" ><%=entity.Summary %></textarea>
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Giá :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Price" id="Price" value="<%=entity.Price %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Sale price :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="SalePrice" id="SalePrice" value="<%=entity.SalePrice %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Time total :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="TimeTotal" id="TimeTotal" value="<%=entity.TimeTotal %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Start date :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="StartDate" id="StartDate" value="<%=entity.StartDate %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Schedule :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Schedule" id="Schedule" value="<%=entity.Schedule %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Locations :</label>
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
                    <label>Schedule detail :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="ScheduleDetail" id="ScheduleDetail" value="<%=entity.ScheduleDetail %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Ảnh :</label>
                </td>
                <td>
                    <%= Utils.GetMedia(entity.File, 100, 80)%> <br />
                    <input class="text_input" type="text" name="File" id="File" style="width:80%;" value="<%=entity.File %>" maxlength="255" />
                    <input class="text_input" style="width:17%;" type="button" onclick="ShowFileForm('File');return false;" value="Chọn File" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Map :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Map" id="Map" value="<%=entity.Map %>" maxlength="255" />
                </td>
            </tr>
            <%if(CPViewPage.UserPermissions.Approve) {%>
            <tr>
                <td class="key">
                    <label>Duyệt :</label>
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