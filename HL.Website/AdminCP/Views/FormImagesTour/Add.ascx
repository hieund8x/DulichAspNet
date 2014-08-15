<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.CPViewControl" %>

<%
    var model = ViewBag.Model as ModImagesTourModel;
    var entity = ViewBag.Data as ModImagesTourEntity;
%>
<script type="text/javascript" src="/{CPPath}/Content/ckfinder/ckfinder.js"></script>
<form id="hlForm" name="hlForm" method="post">
<input type="hidden" id="_hl_action" name="_hl_action" />

<div id="toolbar-box">
    <div class="t"><div class="t"><div class="t"></div></div></div>
    <div class="m">
        <div class="toolbar-list" id="toolbar">
            <%= GetDefaultAddCommand()%>
        </div>
        <div class="pagetitle icon-48-generic">
            <h2>Images tour : <%=  model.RecordID > 0 ? "Chỉnh sửa" : "Thêm mới"%></h2>
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
           <%-- <tr>
                <td class="key">
                    <label>Tour :</label>
                </td>
                <td>
                     <% List<ModTourEntity> listTour = ModTourService.Instance.CreateQuery().ToList(); %>
                     <select name="TourID" id="TourID" class="text_input">
                         <option value="0">-</option>
                         <%for (int i = 0; listTour != null && i < listTour.Count;i++ ){ %>
                         <option <%if(entity.TourID==listTour[i].ID) {%> selected <%} %> value="<%= listTour[i].ID%>"><%= listTour[i].Name%></option>
                         <%} %>
                    </select>
                </td>
            </tr>--%>
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