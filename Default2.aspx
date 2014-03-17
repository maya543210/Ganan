<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <ajaxtoolkit:Accordion ID="Accordion1"   
                        CssClass="accordion"  
                        HeaderCssClass="accordionHeader"  
                        HeaderSelectedCssClass="accordionHeaderSelected"  
                        ContentCssClass="accordionContent"
                        meta:resourcekey="mainPaneResource1"
                         runat="server">
            

                        <Panes>
                         <ajaxtoolkit:AccordionPane runat="server" ID="PaneDetail">
                          <Header>
                          <a href=""  onclick = "return false;" class="Link">על החברה
                          </a> 
                          </Header>
                          <Content>
                          תיאור.. 
                          </Content>
                         </ajaxtoolkit:AccordionPane>
                       
                         <ajaxtoolkit:AccordionPane runat="server" ID="PaneAdd">
                          <Header><a href=""  onclick = "return false;" class="Link">כתובת
                          </a> 
                          </Header>
                          <Content>הלילך 15 יבנה</Content>
                         </ajaxtoolkit:AccordionPane>
                        
                         <ajaxtoolkit:AccordionPane runat="server" ID="PaneArea">
                          <Header>
                          <a href=""  onclick = "return false;" class="Link">איזור שירות
                          </a> 
                          </Header>
                          <Content>איזור הדרום...</Content>
                         </ajaxtoolkit:AccordionPane>
                        </Panes>

                        </ajaxtoolkit:Accordion>
                        </ContentTemplate>
                        </asp:UpdatePanel>

        </div>
    
    </div>
    </form>
</body>
</html>
