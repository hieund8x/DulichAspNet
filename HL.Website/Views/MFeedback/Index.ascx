<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl"%>

<% 
    var item = ViewBag.Data as ModFeedbackEntity;
    if (item == null)
        item = new ModFeedbackEntity();

    var detail = ViewBag.Detail as ModNewsEntity;
%>

<p class="link">
   <a href="/"><span>{RS:Web_HOME}</span></a><span>></span> 
   <%= Utils.GetMapPage(ViewPage.CurrentPage, "<span>></span>")%>
</p>

<p class="clear_20"></p>

<div id="details">
    <%if (detail != null)
      { %> <%=detail.Content%> <%} %>
</div>

<form method="post">

<div id="contact">
    <p class="row">
        <span>{RS:Web_FB_Title} (*)</span>
        <input type="text" name="Title" value="<%=item.Title %>" class="text-input" />
    </p>
    <p class="row" style="height: 100px;">
        <span>{RS:Web_FB_Content} (*)</span>
        <textarea class="text-area" name="Content" rows="" cols=""><%=item.Content %></textarea>
    </p>
    <p class="row">
        <span>{RS:Web_FB_Name} (*)</span>
        <input type="text" name="Name" value="<%=item.Name %>" class="text-input" />
    </p>
    <p class="row">
        <span>{RS:Web_FB_Phone} (*)</span>
        <input type="text" name="Phone" value="<%=item.Phone %>" class="text-input" />
    </p>
    <p class="row">
        <span>{RS:Web_FB_Email}</span>
        <input type="text" name="Email" value="<%=item.Email %>" class="text-input" />
    </p>
    <input name="_hl_action[AddPOST]" type="submit" value="{RS:Web_FB_Submit}" class="contact-button" />
</div>

</form>

