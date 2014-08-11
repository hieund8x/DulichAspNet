<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.CPViewControl" %>

<%
    var model = ViewBag.Model as ModOrderModel;
    var entity = ViewBag.Data as ModOrderEntity;
%>

<form id="hlForm" name="hlForm" method="post">
<input type="hidden" id="_hl_action" name="_hl_action" />

<div id="toolbar-box">
    <div class="t"><div class="t"><div class="t"></div></div></div>
    <div class="m">
        <div class="toolbar-list" id="toolbar">
            <%= GetDefaultAddCommand()%>
        </div>
        <div class="pagetitle icon-48-generic">
            <h2>Thứ tự : <%=  model.RecordID > 0 ? "Chỉnh sửa" : "Thêm mới"%></h2>
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
                    <label>Customer name :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="CustomerName" id="CustomerName" value="<%=entity.CustomerName %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Customer address :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="CustomerAddress" id="CustomerAddress" value="<%=entity.CustomerAddress %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Customer email :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="CustomerEmail" id="CustomerEmail" value="<%=entity.CustomerEmail %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Cusomer phone :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="CusomerPhone" id="CusomerPhone" value="<%=entity.CusomerPhone %>" maxlength="255" />
                </td>
            </tr>
            <tr>
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
            </tr>
           <tr>
                <td class="key">
                    <label>Tour name :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="TourName" id="TourName" value="<%=entity.TourName %>" maxlength="255" />
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
                    <label>End date :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="EndDate" id="EndDate" value="<%=entity.EndDate %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Adults :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Adults" id="Adults" value="<%=entity.Adults %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Children1 :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Children1" id="Children1" value="<%=entity.Children1 %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Children2 :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Children2" id="Children2" value="<%=entity.Children2 %>" maxlength="255" />
                </td>
            </tr>
           <tr>
                <td class="key">
                    <label>Comment :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Comment" id="Comment" value="<%=entity.Comment %>" maxlength="255" />
                </td>
            </tr>
          </table>
        </div>                
        <div class="clr"></div>
    </div>
    <div class="b"><div class="b"><div class="b"></div></div></div>
</div>

</form>