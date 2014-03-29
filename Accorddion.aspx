<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Accorddion.aspx.cs" Inherits="_Accorddion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%--<script src="jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script> <!--Remote Link-->

 <script type = "text/javascript">

 </script>--%>
 
		<!-- MAIN -->
		<div id="main">
			
			<!-- content -->
			<div id="content">
				
				<!-- title -->
				<div id="page-title">
					<span class="title">עריכת פרטי גנן</span>
                 
					<span class="subtitle">מאיה קידר</span>
				</div>
				<!-- ENDS title -->
				

				
				
				<!-- page-content -->
				<div id="Div1">
					
					<%--<div class="accordion">
						<h6><a href="#">Section 1</a></h6>
						<div>
							<p>
							Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
							ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
							amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
							odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
							</p>
						</div>
						<h6><a href="#">Section 2</a></h6>
						<div>
							<p>
							Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
							purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
							velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
							suscipit faucibus urna.
							</p>
						</div>
						<h6><a href="#">Section 3</a></h6>
						<div>
							<p>
							Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
							Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
							ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
							lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
							</p>
							<ul>
								<li>List item one</li>
								<li>List item two</li>
								<li>List item three</li>
							</ul>
						</div>
						<h6><a href="#">Section 4</a></h6>
						<div>
							<p>
							Cras dictum. Pellentesque habitant morbi tristique senectus et netus
							et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
							faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
							mauris vel est.
							</p>
							<p>
							Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
							Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
							inceptos himenaeos.
							</p>
						</div>
					</div>--%>
					
	
    
    
    				

				
            <br />
            <br />

			<!-- content -->
			<div id="Div2">
				
				<!-- title -->
				<div id="Div3">
					<span class="title">The Portfolio</span>
					<span class="subtitle">Donec eu libero sit amet quam egestas semper.</span>
				</div>
				<!-- ENDS title -->
				
				<!-- filter -->
				<ul class="filter">
					<li>Categories</li>
		    		<li><a href="#" > Webdesign </a></li>
		    		<li class="active"><a href="#" > Photography </a></li>
		    		<li><a href="#" > Logo </a></li>
		    		<li><a href="#" > Marketing  </a></li>
		    		<li><a href="#" > Marketing </a></li>
		    		<li><a href="#" > Gaming </a></li>
		    		<li><a href="#" > Coding </a></li>
		    	</ul>
				<!-- ENDS filter -->
				
            <%--  ---------------------Aya-Left--------------------------------------------------%>  

             <div id="LeftDiv">
				<!-- project column (left)-->
				<div class="project-column">
					<!-- shadow -->
					<div class="project-shadow">
						<div class="project-thumbnail"><img src="img/dummies/438x267.gif"  alt="Feature image" /></div>
						<!-- meta -->
						<ul class="meta">
							<li><strong>Project date</strong> Dec 27th 2011 </li>
							<li><strong>Client</strong> IBM</li> 
							<li><strong>Visit website</strong> <a href="#">www.luiszuno.com</a></li>
						</ul>
						<!-- ENDS meta -->
					</div>
					<!-- ENDS shadow -->
				</div>
				<!-- ENDS project column (left)-->
			  </div>
              <%------------------ends Aya-Left----------------------------------------------------------------%>


                <%--  ---------------------Aya-Right--------------------------------------------------%>  
				<!--project column (right) -->
                <div id="RightDiv">
				<%--<div class="project-column">
					<h1 class="project-title">Lorem ipsum dolor amet</h1>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					
					<!-- project gallery -->
					<h2>Project gallery</h2>
					<ul class="project-gallery">
						<li><a href="img/dummies/204x148.gif" class="fancybox"><img src="img/dummies/204x148.gif" alt="Pic"></a></li>
						<li><a href="img/dummies/204x148.gif" class="fancybox"><img src="img/dummies/204x148.gif" alt="Pic"></a></li>
						<li><a href="img/dummies/204x148.gif" class="fancybox"><img src="img/dummies/204x148.gif" alt="Pic"></a></li>
						<li><a href="img/dummies/204x148.gif" class="fancybox"><img src="img/dummies/204x148.gif" alt="Pic"></a></li>
					</ul>
					<!-- ENDS project gallery -->
				</div>--%>



                	<div class="accordion" dir="rtl">
						<h6><a href="#"> על החברה</a></h6>
						<div>
							
						     <asp:PlaceHolder ID="Label_Descr" runat="server"></asp:PlaceHolder>
							
						</div>
						<h6><a href="#"> כתובת</a></h6>
						<div>
                        <asp:PlaceHolder ID="PH_Address" runat="server"></asp:PlaceHolder>
                        <br />
	
						</div>
						<h6><a href="#"> איזור שירות</a></h6>
						<div>
							<asp:Label ID="Label_SrvArea" runat="server" Text=" "></asp:Label>
						</div>
						<h6><a href="#">Section 4</a></h6>
						<div>
							<p>
							Cras dictum. Pellentesque habitant morbi tristique senectus et netus
							et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
							faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
							mauris vel est.
							</p>
							<p>
							Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
							Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
							inceptos himenaeos.
							</p>
						</div>
					</div>

                </div>
            <%--    --------------------ends Aya-Right------------------------------------------------------------%>



				<div class="clear"></div>
				<!-- ENDS project column (right) -->
				
				<!-- Related -->
				<h2 class="related-title">Related projects</h2>
				<ul class="related-projects">
					<li>
						<a href="#" class="box"><img src="img/dummies/204x148.gif" alt="Pic"></a>
						<a href="#"><strong>Pellentesque</strong> habitant morbi tristique senectus et senectus et netus habitant morbihabitant morbi tristique senectus et senectus et netus  tristique senectus et senectus et netus</a>
					</li>
					<li>
						<a href="#" class="box"><img src="img/dummies/204x148.gif" alt="Pic"></a>
						<a href="#"><strong>Pellentesque</strong> habitant morbi tristique senectus et senectus et netus habitant morbihabitant morbi tristique senectus et senectus et netus  tristique senectus et senectus et netus</a>
					</li>
					<li>
						<a href="#" class="box"><img src="img/dummies/204x148.gif" alt="Pic"></a>
						<a href="#"><strong>Pellentesque</strong> habitant morbi tristique senectus et senectus et netus habitant morbihabitant morbi tristique senectus et senectus et netus  tristique senectus et senectus et netus</a>
					</li>
					<li>
						<a href="#" class="box"><img src="img/dummies/204x148.gif" alt="Pic"></a>
						<a href="#"><strong>Pellentesque</strong> habitant morbi tristique senectus et senectus et netus habitant morbihabitant morbi tristique senectus et senectus et netus  tristique senectus et senectus et netus</a>
					</li>
				</ul>
				<!-- ENDS Related -->
				
			</div>
			<!-- ENDS content -->
	           

               <br /> <br />  <br /> <br />
              
              <div id="page-content">
              <!-- TABS -->
					<!-- the tabs -->
					<ul class="tabs">
					    <li><a href="#">דרג </a></li>
						<li><a href="#">דירוג</a></li>
						<li><a href="#">חוות-דעת</a></li>					
					</ul>
					
					<!-- tab "panes" -->
					<div class="panes">
					
						<!-- tab 1 content  -->
						<div>
							
						<asp:PlaceHolder ID="PH_Rate" runat="server">
                            </asp:PlaceHolder>

						</div>
						<!-- ENDS tab 1 content -->
						
						<!-- tab 2 content  -->
						<div>
						  	<asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
						</div>
						<!-- ENDS tab 2 content -->
						
						<!-- tab 3 content  -->
						<div>
							<asp:Label ID="Label_Opinion" runat="server" Text="Label"></asp:Label>
						</div>
						<!-- ENDS tab 3 content -->
						
					</div>
					<!-- ENDS TABS -->




				<%--	<h1>Lorem ipsum dolor</h1>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					
					<h2>Lorem ipsum dolor</h2>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					
					<h3>Lorem ipsum dolor</h3>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					
					<h4>Lorem ipsum dolor</h4>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					
					<h5>Lorem ipsum dolor</h5>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					
					<h6>Lorem ipsum dolor</h6>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					
					
					<!-- Lists -->
					<h4 class="line-divider">Bullet list</h4>
					<div class="lists-check">

						<ul>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
						</ul>
					</div>
					
					<div class="lists-arrow">
						<ul>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
						</ul>
					</div>
					
					<div class="lists-plus">
						<ul>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
						</ul>
					</div>
					
					<div class="lists-star">
						<ul>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
						</ul>
					</div>
					
					<div class="lists-heart">
						<ul>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
						</ul>
					</div>
					<!-- ENDS  Lists -->
				
					<!-- Quotes -->
					<h4 class="line-divider">Quotes</h4>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.<span class="pullquote-right">THIS IS A PULL QUOTE RIGHT, LOREM IPSUM DOLOR AMET</span> Quisque sit amet est et sapien ullamcorper pharetra.  Ut felis. Praesent dapibus, neque id cursus faucibus,  Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>
					
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.<span class="pullquote-left">THIS IS A PULL QUOTE RIGHT, LOREM IPSUM DOLOR AMET</span> Quisque sit amet est et sapien ullamcorper pharetra.  Ut felis. Praesent dapibus, neque id cursus faucibus,  Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>				
					<!-- ENDS Quotes -->
					
					
					<!-- Dropcaps -->
					<h4 class="line-divider">Drop caps</h4>
					<p class="dropcap">Aliquam enim ac eros eu erat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, facilisis luctus.</p>	
					<p class="dropcap dark">Aliquam enim ac eros eu erat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, facilisis luctus.</p>
					<!-- ENDS Dropcaps -->
					
					
					<!-- Highlight -->
					<h4 class="line-divider">Highlighted text</h4>
					<p><span class="highlight">Regular highlighted</span> Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. <span class="highlight-red">Red highlighted</span> Aliquam erat volutpat. Nam dui mi, tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, accumsan porttitor, facilisis luctus, metus.<span class="highlight-blue">Blue highlighted</span> Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. Aliquam erat volutpat. Nam dui mi,<span class="highlight-green">Green highlighted</span> tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, accumsan porttitor, facilisis luctus, metus.Nam dui mi, tinciduntquis,tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>	
					<!-- ENDS Highlight -->
					
					
					<!-- Link buttons -->
					<h4 class="line-divider">Link buttons</h4>
					<p><a href="#" class="link-button">Link button</a></p>
					<p><a href="#" class="link-button">The button width fixes to its content</a></p>
					<p><a href="#" class="link-button-light">Inverted color</a></p>
					<p><a href="#" class="link-button-light">A lot and lots of text fits here</a></p>
					<div class="clear"></div>
					<!-- ENDS Link buttons -->
					
					
					<!-- table -->
					<h4 class="line-divider">Tables</h4>
					<table>				
						<tbody>
							<tr>
								<th>Header</th>
								<th>Header</th>
								<th>Header</th>
								<th>Header</th>
							</tr>
							<tr>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
							</tr>
								<tr>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
							</tr>
							<tr>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
							</tr>
								<tr>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
							</tr>
							<tr>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
								<td>Lorem ipsum</td>
							</tr>
						</tbody>
					</table>
					<!-- ENDS table -->
					--%>
					
				</div>
				<!-- ENDS page-content -->
				
				

			</div>
			<!-- ENDS content -->
			
			<!-- Twitter -->
			<%--<div id="twitter">
				<a href="#" id="prev-tweet"></a>
				<a href="#" id="next-tweet"></a>
				<div id="tweets">
					<ul class="tweet_list"></ul>
				</div>
			</div>--%>
			<!-- ENDS Twitter -->


		</div>
		<!-- ENDS MAIN -->


    </div>
</asp:Content>

