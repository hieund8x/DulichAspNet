﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.CPViewControl"%>

<script runat="server">
   
    List<SysLangEntity> listLang = null;
    SysSiteModel model = null;
    SysSiteEntity entity = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        model = ViewBag.Model as SysSiteModel;
        entity = ViewBag.Data as SysSiteEntity;

        listLang = SysLangService.Instance.CreateQuery().ToList();
    }
    
</script>

<form id="hlForm" name="hlForm" method="post">

<input type="hidden" id="_hl_action" name="_hl_action" />

<div id="toolbar-box">
    <div class="t"><div class="t"><div class="t"></div></div></div>
    <div class="m">
       <div class="toolbar-list" id="toolbar">
            <%=GetDefaultAddCommand()%>
        </div>
        <div class="pagetitle icon-48-module">
            <h2>Site :  <%=  model.RecordID > 0 ? "Chỉnh sửa" : "Thêm mới"%></h2>
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
                    <label>Tên site :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Name" value="<%=entity.Name %>" maxlength="255" />
                </td>
            </tr>
            <tr>
                <td class="key">
                    <label>Mã :</label>
                </td>
                <td>
                    <input class="text_input" type="text" name="Code" value="<%=entity.Code %>" maxlength="255" />
                </td>
            </tr>
             <tr>
                <td class="key">
                    <label>Trang mặc định :</label>
                </td>
                <td>
                   <div id="list_page"></div>
                </td>
            </tr>
            <tr>
                <td class="key">
                    <label>Ngôn ngữ :</label>
                </td>
                <td>
                    <select class="text_input" onchange="lang_change(this.value)" name="LangID" id="LangID">
                        <%for (int i = 0; listLang != null && i < listLang.Count; i++)
                          { %>
                            <option <%if(entity.LangID==listLang[i].ID) {%>selected<%} %> value='<%= listLang[i].ID%>'>&nbsp; <%= listLang[i].Name%></option>
                        <%} %> 
                    </select>
                </td>
            </tr>
            <tr>
                <td class="key">
                    <label>Mã thiết kế:</label>
                </td>
                <td>
                    <textarea class="text_input" style="height:100px;" name="Custom"><%=entity.Custom%></textarea>
                </td>
            </tr>
          </table>

        </div>                
        <div class="clr"></div>
    </div>
    <div class="b"><div class="b"><div class="b"></div></div></div>
</div>


<script type="text/javascript">
    var ddl_lang = document.getElementById('LangID');

    function lang_change(lang_id) { 
     var ranNum = Math.floor(Math.random() * 999999);
     sLink = '/{CPPath}/Ajax/SiteGetPage.aspx/LangID/'+ lang_id +'/PageID/<%=entity.PageID %>?rnd=' + ranNum;	
     AjaxRequest.get(
	        {
	        'url':sLink
	        ,'onSuccess':function(req){	 
              with(req.responseXML.getElementsByTagName('Item').item(0))
			    {
			        var content = getNodeValue(getElementsByTagName('Params'));
                    content = '<select class="text_input" name="PageID" id="PageID"><option value="0">Root</option>' + content + '</select>';

			        document.getElementById("list_page").innerHTML = content;
    		    }
	        }
	        ,'onError':function(req){}
	        }
        )
    }

    <%if(entity.LangID > 0) {%>lang_change(<%=entity.LangID %>);<%} %>

</script>

</form>