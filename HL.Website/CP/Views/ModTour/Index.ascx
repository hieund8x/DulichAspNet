﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.CPViewControl"%>

<%
    var model = ViewBag.Model as ModTourModel;
    var listEntity = ViewBag.Data as List<ModTourEntity>;
%>

<form id="hlForm" name="hlForm" method="post">

<input type="hidden" id="_hl_action" name="_hl_action" />
<input type="hidden" id="boxchecked" name="boxchecked" value="0" />

<div id="toolbar-box">
    <div class="t"><div class="t"><div class="t"></div></div></div>
    <div class="m">
        <div class="toolbar-list" id="toolbar">
            <%=GetDefaultListCommand()%>
        </div>
        <div class="pagetitle icon-48-generic">
            <h2>Tour</h2>
        </div>
        <div class="clr"></div>
    </div>
    <div class="b"><div class="b"> <div class="b"></div></div></div>
</div>
<div class="clr"></div>

<script type="text/javascript">

    var HLController = 'ModTour';

    var HLArrVar = [
                        'filter_state', 'State',
                        'filter_menu', 'MenuID',
                        'filter_lang', 'LangID',  
                        'limit', 'PageSize'
                   ];


    var HLArrVar_QS = [
                        'filter_search', 'SearchText'
                      ];

    var HLArrQT = [
                      '<%= model.PageIndex + 1 %>', 'PageIndex', 
                      '<%= model.Sort %>', 'Sort'
                  ];

    var HLArrDefault =
                  [
                    '1', 'PageIndex',
                    '1', 'LangID',
                    '20', 'PageSize'
                  ];
</script>

<%= ShowMessage()%>

<div id="element-box">
    <div class="t"><div class="t"><div class="t"></div></div></div>
    <div class="m">

       <table>
            <tr>
                <td width="100%">
                     Lọc: <input type="text" id="filter_search" value="<%= model.SearchText %>" class="text_area" onchange="HLRedirect();return false;" />
                    <button onclick="HLRedirect();return false;">Tìm kiếm</button>
                </td>
                <td nowrap="nowrap">
                   Chuyên mục : 
                    <select id="filter_menu" onchange="HLRedirect()" class="inputbox" size="1">
                         <option value="0">(Tất cả)</option>
                         <%= Utils.ShowDDLMenuByType("Tour", model.LangID, model.MenuID)%> 
                    </select>
                   Vị trí :
                   <select id="filter_state" onchange="HLRedirect()" class="inputbox" size="1">
                         <option value="0">(Tất cả)</option>
                         <%= Utils.ShowDDLByConfigkey("Mod.TourState", model.State)%>
                    </select>
                   Ngôn ngữ :<%= ShowDDLLang(model.LangID)%>
                </td>
            </tr>
        </table>

        <table class="adminlist" cellspacing="1">
            <thead>
                <tr>
                    <th width="1%">
                        #
                    </th>
                    <th width="1%">
                        <input type="checkbox" name="toggle" value="" onclick="checkAll(<%= model.PageSize %>);" />
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("ID", "ID")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Chuyên mục", "MenuID")%>
                    </th>
                    <th class="title">
                        <%= GetSortLink("Tên", "Name")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Mã", "Code")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Tags", "Tags")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Giá", "Price")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Sale price", "SalePrice")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Time total", "TimeTotal")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Start date", "StartDate")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Schedule", "Schedule")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Locations", "Locations")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Schedule detail", "ScheduleDetail")%>
                    </th>
                    <th style="width:40px" nowrap="nowrap">
                        <%= GetSortLink("Ảnh", "File")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Map", "Map")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Xuất bản", "Published")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                         <%= GetSortLink("Thứ tự", "Order")%>
                         <a href="javascript:hl_exec_cmd('saveorder')" class="saveorder" title="Lưu sắp xếp"></a>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Duyệt", "Activity")%>
                    </th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td colspan="15">
                        <del class="container">
                            <%= GetPagination(model.PageIndex, model.PageSize, model.TotalRecord)%>
                        </del>
                    </td>
                </tr>
            </tfoot>
            <tbody>
               <%for (int i = 0; listEntity != null && i < listEntity.Count; i++)
                 { %>
                <tr class="row<%= i%2 %>">
                    <td align="center">
                        <%= i + 1%>
                    </td>
                    <td align="center">
                        <%= GetCheckbox(listEntity[i].ID, i)%>
                    </td>
                    <td align="center">
                       <%= listEntity[i].ID%>
                    </td>
                    <td align="center">
                       <%= GetName(listEntity[i].getMenu()) %>
                    </td>
                    <td>
                        <a href="javascript:HLRedirect('Add', <%= listEntity[i].ID %>)"><%= listEntity[i].Name%></a>
                    </td>
                    <td align="center">
                       <%= listEntity[i].Code%>
                    </td>
                    <td align="center">
                       <%= listEntity[i].Tags%>
                    </td>
                    <td align="center">
                       <%= string.Format("{0:#,##0}", listEntity[i].Price)%>
                    </td>
                    <td align="center">
                       <%= string.Format("{0:#,##0}", listEntity[i].SalePrice)%>
                    </td>
                    <td align="center">
                       <%= listEntity[i].TimeTotal%>
                    </td>
                    <td align="center">
                       <%= listEntity[i].StartDate%>
                    </td>
                    <td align="center">
                       <%= listEntity[i].Schedule%>
                    </td>
                    <td align="center">
                       <%= listEntity[i].Locations%>
                    </td>
                    <td align="center">
                       <%= listEntity[i].ScheduleDetail%>
                    </td>
                    <td align="center">
                       <%= Utils.GetMedia(listEntity[i].File, 40, 40)%>
                    </td>
                    <td align="center">
                       <%= listEntity[i].Map%>
                    </td>
                    <td align="center">
                       <%= string.Format("{0:dd/MM/yyyy HH:mm}", listEntity[i].Published) %>
                    </td>
                    <td class="order">
                        <%= GetOrder(listEntity[i].ID, listEntity[i].Order)%>
                    </td>
                    <td align="center">
                       <%= GetPublish(listEntity[i].ID, listEntity[i].Activity)%>
                    </td>
                </tr>
                <%} %>
            </tbody>
        </table>
                            
        <div class="clr"></div>
    </div>
    <div class="b"><div class="b"><div class="b"></div></div></div>
</div>

</form>
