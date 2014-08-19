<%@ Control Language="C#" AutoEventWireup="true" Inherits="HL.Lib.MVC.ViewControl" %>

<%
    var listItem = ViewBag.Data as List<ModTourEntity>;
%>

<div class="tabshome">
				<ul class="tabs">
			        <li><a href="#tab2"><span>Tour khuyến mãi</span></a></li>
			        <li><a href="#tab3"><span>tour mới</span></a></li>
			    </ul>
			    <div class="tab_container">
			        <div id="tab2" class="tab_content">
			            <ul class="lkh">
                            <%
                                int countKM = 0;
                                for (int i = 0; listItem != null && i < listItem.Count;i++ )
                                { 
                                    if(listItem[i].State>=2 && (listItem[i].State==2 || listItem[i].State%2==1)){
                            %>
			           		<li>
			           			<div class="img-lkh"><a href="<%=ViewPage.GetURL(listItem[i].MenuID, listItem[i].Code)%>"><img src="<%=Utils.GetResizeFile(listItem[i].File, 2, 175, 129)%>" alt="" /></a></div>	
								<h3><a href="<%=ViewPage.GetURL(listItem[i].MenuID, listItem[i].Code)%>"><%=listItem[i].Name%></a></h3>
		                        <p><%=listItem[i].TimeTotal%> (<%=listItem[i].Vehicle%>)</p>
		                        <p>KHỞI HÀNH: <%=listItem[i].StartDate%></p>
			           		</li>
                            <%
                                        countKM++;
                            }
                                    if (countKM == 4)
                                    {
                                        break;
                                    }
                              }
                               %>
							
			           </ul>
			        </div>
			        <div id="tab3" class="tab_content">
			           <ul class="lkh">
                            <%
                                int countNew = 0;
                                for (int i = 0; listItem != null && i < listItem.Count;i++ )
                                { 
                                    if(listItem[i].State>=4 && (listItem[i].State==4 || listItem[i].State%4==3)){
                            %>
			           		<li>
			           			<div class="img-lkh"><a href="<%=ViewPage.GetURL(listItem[i].MenuID, listItem[i].Code)%>"><img src="<%=Utils.GetResizeFile(listItem[i].File, 2, 175, 129)%>" alt="" /></a></div>	
								<h3><a href="<%=ViewPage.GetURL(listItem[i].MenuID, listItem[i].Code)%>"><%=listItem[i].Name%></a></h3>
		                        <p><%=listItem[i].TimeTotal%> (<%=listItem[i].Vehicle%>)</p>
		                        <p>KHỞI HÀNH: <%=listItem[i].StartDate%></p>
			           		</li>
                            <%
                                        countNew++;
                            }
                                    if (countNew == 4)
                                    {
                                        break;
                                    }
                              }
                               %>
							
			           </ul>
			        </div>
			        
			    </div>
			</div><!--tabshome-->

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

