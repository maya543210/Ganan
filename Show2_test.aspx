<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowGanan.aspx.cs" Inherits="_ShowGanan" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

				
				<!-- title -->
				<div id="page-title">                  
                  <div class="div1">
                    <asp:Image ID="ImageCompany" runat="server"  CssClass="ImageCompany"/>
                         
                  </div>

                 <div class="div1">
                  <h1 class="CompanyName"> 
				    <asp:Label ID="LabelCompanyName" runat="server" Text="Avi Levi"></asp:Label>
                  </h1> 
                 </div>
                    
                 <div class="div2">
                    <h6>טלפון</h6>
                    <asp:Label ID="LabelContactPhone" runat="server" Text="050-3087363"></asp:Label>
                    <h6>אימייל</h6>
                    <asp:Label ID="LabelContactEmail" runat="server" Text="avi.levi@hotmail.com"></asp:Label>
                  </div>  
				</div>
				<!-- ENDS title -->
				
				<!-- page-content -->
				<%--<div id="page-content">
					</div>--%>
					<%--<h4 class="line-divider">Headers</h4>--%>
                    
                    <div id="companyDescription" class="DescDiv">
                        <h6>על החברה</h6>
                        <asp:Label ID="LabelDescription" runat="server" Text="description"></asp:Label>
                        <h6>איזור שירות</h6>
                        <asp:Label ID="LabelServiceArea" runat="server" Text="Service Area"></asp:Label>
                        <h6> כתובת</h6>
                        <asp:Label ID="LabelAddress" runat="server" Text="הלילך 15, יבנה "></asp:Label>

                  
                    </div>
                    <br /> <br /><br /> <br /><br /> <br />

					
				
					<!-- Rating -->
					<h4 class="line-divider">דירוג</h4>
                    <asp:ScriptManager ID="asm" runat="server" />
                   <%-- <ajaxtoolkit:rating ID="test"runat="server"></ajaxtoolKit:rating>--%>

					<%--<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.<span class="pullquote-right">THIS IS A PULL QUOTE RIGHT, LOREM IPSUM DOLOR AMET</span> Quisque sit amet est et sapien ullamcorper pharetra.  Ut felis. Praesent dapibus, neque id cursus faucibus,  Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>
					
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.<span class="pullquote-left">THIS IS A PULL QUOTE RIGHT, LOREM IPSUM DOLOR AMET</span> Quisque sit amet est et sapien ullamcorper pharetra.  Ut felis. Praesent dapibus, neque id cursus faucibus,  Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>		--%>		
					<!-- ENDS Rating -->
					
					
					<!-- Dropcaps -->
					<%--<h4 class="line-divider">Drop caps</h4>
					<p class="dropcap">Aliquam enim ac eros eu erat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, facilisis luctus.</p>	
					<p class="dropcap dark">Aliquam enim ac eros eu erat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, facilisis luctus.</p>--%>
					<!-- ENDS Dropcaps -->
					
					
					<!-- Highlight -->
					<%--<h4 class="line-divider">Highlighted text</h4>
					<p><span class="highlight">Regular highlighted</span> Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. <span class="highlight-red">Red highlighted</span> Aliquam erat volutpat. Nam dui mi, tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, accumsan porttitor, facilisis luctus, metus.<span class="highlight-blue">Blue highlighted</span> Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. Aliquam erat volutpat. Nam dui mi,<span class="highlight-green">Green highlighted</span> tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, accumsan porttitor, facilisis luctus, metus.Nam dui mi, tinciduntquis,tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>	--%>
					<!-- ENDS Highlight -->
					
					
					<!-- Link buttons -->
					<%--<h4 class="line-divider">Link buttons</h4>
					<p><a href="#" class="link-button">Link button</a></p>
					<p><a href="#" class="link-button">The button width fixes to its content</a></p>
					<p><a href="#" class="link-button-light">Inverted color</a></p>
					<p><a href="#" class="link-button-light">A lot and lots of text fits here</a></p>
					<div class="clear"></div>--%>
					<!-- ENDS Link buttons -->
					
					
					<!-- table -->
					<%--&nbsp;<h4 class="line-divider">Tables</h4>
					<table>				
						&nbsp;<tbody>
							<tr>
								&nbsp;<th>Header</th>
								<th>Header</th>
								<th>Header</th>
								<th>Header</th>
							</tr>
							&nbsp;<tr>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
							</tr>
								&nbsp;<tr>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
							</tr>
							&nbsp;<tr>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
							</tr>
								&nbsp;<tr>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
							</tr>
							&nbsp;<tr>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
							</tr>
						&nbsp;</tbody>
					</table>--%>
					<!-- ENDS table -->
				<!-- ENDS page-content -->
				
				

	
			<!-- ENDS content -->
			
			<!-- Twitter -->
			<%--<div id="twitter">
				&nbsp;<a href="#" id="prev-tweet"></a>
				<a href="#" id="next-tweet"></a>
				&nbsp;<div id="tweets">
					<ul class="tweet_list"></ul>
				&nbsp;</div>
			</div>--%>
			<!-- ENDS Twitter -->
		<!-- ENDS MAIN -->




</asp:Content>

