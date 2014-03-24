<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link href="css/style.css" rel="stylesheet" type="text/css" /> 
<!-- MAIN -->
		<div id="main">  
			
			</div>
			
			<!-- content -->
			<div id="content"> 
				
				</div>
                	<!-- title -->
				<div id="page-title">
					
					<%--<span class="title">הצגת גנן</span>--%>
                    
					<%--<span class="subtitle">איה טולדנו</span>--%>
                   
                     <div class="div1">   <%--class div1 כדי להצמיד את האובייקטים לימין--%>
				      <asp:Image ID="ImageCompany" runat="server"  CssClass="ImageCompany"/>  תמונת החברה
                         
                    </div>

                    <div class="div1">  <%--class div1 כדי להצמיד את האובייקטים לימין--%>
                    <h1 class="CompanyName">   <%--שם הגנן/ חברה--%>
				    <asp:Label ID="LabelCompanyName" runat="server" Text=""></asp:Label>
                    </h1> 
                    </div>

                     <div class="div2">
                    <asp:ImageButton ID="ImageButton1" CssClass="ContactDiv" ImageUrl="images/phone.GIF" runat="server" />
                    </div>
<%--

 <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
 </ajaxToolkit:ToolkitScriptManager>

 <div class="ac">
 <asp:UpdatePanel ID="UpdatePanel2" runat="server">
 <ContentTemplate>
 <ajaxToolkit:Accordion ID="Accordion1" SelectedIndex="1" FadeTransitions="true"
  FramesPerSecond= "40" TransitionDuration="250" AutoSize="None"  
  CssClass="accordion"  HeaderCssClass="accordionHeader"  
  HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent"
  meta:resourcekey="mainPaneResource1" runat="server">

                        <Panes>
                         <ajaxToolkit:AccordionPane runat="server" ID="PaneDetail">
                          <Header>
                          <a href=""  onclick = "return false;" class="Link">על החברה
                          </a> 
                          </Header>
                          <Content>
                          <asp:PlaceHolder ID="tablePH_Descrip" runat="server"></asp:PlaceHolder>
                          </Content>
                         </ajaxToolkit:AccordionPane>
                       
                         <ajaxToolkit:AccordionPane runat="server" ID="PaneAdd">
                          <Header><a href=""  onclick = "return false;" class="Link">כתובת
                          </a> 
                          </Header>
                          <Content>הלילך 15 יבנה</Content>
                         </ajaxToolkit:AccordionPane>
                        
                         <ajaxToolkit:AccordionPane runat="server" ID="PaneArea">
                          <Header>
                          <a href=""  onclick = "return false;" class="Link">איזור שירות
                          </a> 
                          </Header>
                          <Content>איזור הדרום...</Content>
                         </ajaxToolkit:AccordionPane>
                        </Panes>

                        </ajaxToolkit:Accordion>
                         </ContentTemplate>
                         </asp:UpdatePanel>
                         </div>--%>

 <br /> <br />  <br /> <br />
<h4 class="line-divider">דירוג </h4>


<asp:ScriptManager ID="sm" runat="server" />
    <div>
    <div class="demoarea">
      <div class="demoheading">Rating Demonstration </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
              <div style="float: left; width:230;">How much do you like ASP.NET AJAX ?</div>
                <ajaxtoolkit:Rating ID="LikeRating" runat="server" 
                    CurrentRating="3" 
                    MaxRating="5" 
                    StarCssClass="ratingStar" 
                    WaitingStarCssClass="savedRatingStar" 
                    FilledStarCssClass="filledRatingStar" 
                    EmptyStarCssClass="emptyRatingStar" 
                    OnChanged="" 
                    style="float: left;">
                </ajaxToolkit:Rating>
                <br />
                <div style="clear:left;">
                <br />
                    <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" 
                        onclick="ButtonSubmit_Click" /><br /><br />
                    <asp:Label ID="LabelResponse" runat="server" Text="[ No response provioded yet.]"></asp:Label>   
                </div>
            </ContentTemplate>     
        </asp:UpdatePanel>   
    </div>
    </div>
    </div>
</asp:Content>

  



