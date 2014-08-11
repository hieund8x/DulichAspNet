<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.CPViewControl"%>

<%
    var model = ViewBag.Model as ModOrderModel;
    var listEntity = ViewBag.Data as List<ModOrderEntity>;
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
            <h2>Thứ tự</h2>
        </div>
        <div class="clr"></div>
    </div>
    <div class="b"><div class="b"> <div class="b"></div></div></div>
</div>
<div class="clr"></div>

<script type="text/javascript">

    var HLController = 'ModOrder';

    var HLArrVar = [ 
                        'limit', 'PageSize'
                   ];


    var HLArrQT = [
                      '<%= model.PageIndex + 1 %>', 'PageIndex', 
                      '<%= model.Sort %>', 'Sort'
                  ];

    var HLArrDefault =
                  [
                    '1', 'PageIndex',
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
                </td>
                <td nowrap="nowrap">
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
                        <%= GetSortLink("Customer name", "CustomerName")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Customer address", "CustomerAddress")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Customer email", "CustomerEmail")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Cusomer phone", "CusomerPhone")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Tour", "TourID")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Tour name", "TourName")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Start date", "StartDate")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("End date", "EndDate")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Adults", "Adults")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Children1", "Children1")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Children2", "Children2")%>
                    </th>
                    <th width="1%" nowrap="nowrap">
                        <%= GetSortLink("Comment", "Comment")%>
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
                       <%= listEntity[i].CustomerName%>
                    </td>
                    <td align="center">
                       <%= listEntity[i].CustomerAddress%>
                    </td>
                    <td align="center">
                       <%= listEntity[i].CustomerEmail%>
                    </td>
                    <td align="center">
                       <%= listEntity[i].CusomerPhone%>
                    </td>
                    <td align="center">
                       <%= GetName(listEntity[i].getTour()) %>
                    </td>
                    <td align="center">
                       <%= listEntity[i].TourName%>
                    </td>
                    <td align="center">
                       <%= string.Format("{0:dd/MM/yyyy HH:mm}", listEntity[i].StartDate) %>
                    </td>
                    <td align="center">
                       <%= string.Format("{0:dd/MM/yyyy HH:mm}", listEntity[i].EndDate) %>
                    </td>
                    <td align="center">
                       <%= string.Format("{0:#,##0}", listEntity[i].Adults)%>
                    </td>
                    <td align="center">
                       <%= string.Format("{0:#,##0}", listEntity[i].Children1)%>
                    </td>
                    <td align="center">
                       <%= string.Format("{0:#,##0}", listEntity[i].Children2)%>
                    </td>
                    <td align="center">
                       <%= listEntity[i].Comment%>
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
