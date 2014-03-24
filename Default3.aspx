<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                        </ajaxToolkit:ToolkitScriptManager>

                        <div class="ac">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                        <ajaxToolkit:Accordion ID="Accordion1" SelectedIndex="0" FadeTransitions="true"
                        FramesPerSecond= "40" TransitionDuration="250" AutoSize="None"  
                        CssClass="accordion"  
                        HeaderCssClass="accordionHeader"  
                        HeaderSelectedCssClass="accordionHeaderSelected"  
                        ContentCssClass="accordionContent"
                        meta:resourcekey="mainPaneResource1"
                         runat="server">

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
                         </div>
</asp:Content>

