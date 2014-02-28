<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowGanan.aspx.cs" Inherits="_ShowGanan" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
--%> <%--סתם מיותר לי אבל לא רציתי למחוק--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 


		<!-- MAIN -->
		<%--<div id="main">  סתם מיותר לי אבל לא רציתי למחוק 
			
			</div>
			--%>
			<!-- content -->
			<%--<div id="content">  סתם מיותר לי אבל לא רציתי למחוק
				
				</div>
				--%>


				<!-- title -->
				<div id="page-title">
					<%--<span class="title">הצגת גנן</span>--%>
                    
					<%--<span class="subtitle">איה טולדנו</span>--%>
                   
                     <div class="div1">  <%-- class div1 כדי להצמיד את האובייקטים לימין--%>
                    <asp:Image ID="ImageCompany" runat="server"  CssClass="ImageCompany"/>  <%--תמונת החברה--%>
                    </div>

                    <div class="div1">  <%--class div1 כדי להצמיד את האובייקטים לימין--%>
                    <h1 class="CompanyName">   <%--שם הגנן/ חברה--%>
				    <asp:Label ID="LabelCompanyName" runat="server" Text=""></asp:Label>
                    </h1> 
                    </div>
                    
                    <%--<div class="div2">   class div2 כדי להצמיד את האובייקטים לשמאל
                     <h6>טלפון</h6>
                    <asp:Label ID="LabelContactPhone" runat="server" Text="050-3087363"></asp:Label>   טלפון הגנן
                     <h6>אימייל</h6>
                     <asp:Label ID="LabelContactEmail" runat="server" Text="avi.levi@hotmail.com"></asp:Label>  אימייל הגנן
                    </div> --%>

                    <div class="ContactDiv">
                     <%--<a href="https://www.google.co.il/?gws_rd=cr&ei=lxkBU_zeMqTa4wTctYDgCA" class="div2">--%>  <%--איך אני עושה את הקישור בלחיצה על התמונה? אירוע?--%>
                       <img alt="" class="ImageContact" src="images/phone.GIF"  runat="server"/>
                       צור קשר
                     </div>
                   <%-- </a> --%>
                        
                   
				   </div>  <%--end div page-title--%>
          
				<!-- ENDS title -->
				
				<!-- page-content -->
				<%--<div id="page-content">  סתם מיותר לי אבל לא רציתי למחוק 
					</div> --%>
					<%--<h4 class="line-divider">Headers</h4>--%>   <%--סתם מיותר לי אבל לא רציתי למחוק--%>
                    
                    <div id="companyDescription" class="DescDiv">  <%--תיאור החברה--%>
                        <h6>על החברה
                        </h6>
                        <asp:Label ID="LabelDescription" runat="server" Text="description"></asp:Label>
                        <br />
                        <h6>איזור שירות</h6>
                        <asp:Label ID="LabelServiceArea" runat="server" Text="Service Area"></asp:Label>   <%--האיזור בו ניתן שירות--%>
                        <h6> כתובת</h6>
                        <asp:Label ID="LabelAddress" runat="server" Text="הלילך 15, יבנה "></asp:Label>   <%--כתובת הגנן--%>

                  
                    </div>   <%--סיום תיאור החברה--%>


                    <br /> <br />  <br /> <br />  <br /> <br />



					<%--<h1>Lorem ipsum dolor</h1>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					
					<h2>Lorem ipsum dolor</h2>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>--%>
					
					<%--<h3>Lorem ipsum dolor</h3>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					
					<h4>Lorem ipsum dolor</h4>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					
					<h5>Lorem ipsum dolor</h5>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					
					<h6>Lorem ipsum dolor</h6>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
					
					--%>
					<!-- Lists -->
					<%--<h4 class="line-divider">
                        
                        Bullet list</h4>--%>
					<%--<div class="lists-check">
						<ul>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
							<li>Lorem ipsum dolor amet</li>
						</ul>
					</div>--%>
					
					<%--<div class="lists-arrow">
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
						</ul>--%>
					<%--</div>--%>
					<!-- ENDS  Lists -->   <%--סתם מיותר לי אבל לא רציתי למחוק--%>
				
					<!-- Rating -->
					<h4 class="line-divider">דירוג</h4>

                   

                    <%--<div>
                     <asp:contentrating 
                       id="ContentRating1" 
                       runat="server"
                       LegendText="rates: {0} avg: {1}" 
                       OnRated="ContentRating1_Rated" 
                       OnRating="ContentRating1_Rating">
                     </asp:contentrating>
                    </div>--%>
                 

                   
                    
                    <%--<asp:ScriptManager ID="asm" runat="server" />--%>
                    <%--<ajaxtoolkit:rating ID="test"runat="server"></ajaxtoolKit:rating>--%>

					<%--&nbsp;--%><%--<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.<span class="pullquote-right">THIS IS A PULL QUOTE RIGHT, LOREM IPSUM DOLOR AMET</span> Quisque sit amet est et sapien ullamcorper pharetra.  Ut felis. Praesent dapibus, neque id cursus faucibus,  Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>
					
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.<span class="pullquote-left">THIS IS A PULL QUOTE RIGHT, LOREM IPSUM DOLOR AMET</span> Quisque sit amet est et sapien ullamcorper pharetra.  Ut felis. Praesent dapibus, neque id cursus faucibus,  Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>		--%>		
					<!-- ENDS Rating -->
					
					
					<%--&nbsp;--%><!-- Dropcaps -->
					<%--<h4 class="line-divider">Drop caps</h4>
					<p class="dropcap">Aliquam enim ac eros eu erat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, facilisis luctus.</p>	
					<p class="dropcap dark">Aliquam enim ac eros eu erat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, facilisis luctus.</p>--%>
					<!-- ENDS Dropcaps -->
					
					
					<%--&nbsp;--%><!-- Highlight -->
					<%--<h4 class="line-divider">Highlighted text</h4>
					<p><span class="highlight">Regular highlighted</span> Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. <span class="highlight-red">Red highlighted</span> Aliquam erat volutpat. Nam dui mi, tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, accumsan porttitor, facilisis luctus, metus.<span class="highlight-blue">Blue highlighted</span> Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.Lacus enim ac eros eu erat. Aliquam erat volutpat. Nam dui mi,<span class="highlight-green">Green highlighted</span> tincidunt quis, nt quis, accumsan porttitor, facilisis luctus, metus.Lacus eni quis,tincidunt quis, accumsan porttitor, facilisis luctus, metus.Nam dui mi, tinciduntquis,tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>	--%>
					<!-- ENDS Highlight -->
					
					
					<%--&nbsp;--%><!-- Link buttons -->
					<%--<h4 class="line-divider">Link buttons</h4>
					<p><a href="#" class="link-button">Link button</a></p>
					<p><a href="#" class="link-button">The button width fixes to its content</a></p>
					<p><a href="#" class="link-button-light">Inverted color</a></p>
					<p><a href="#" class="link-button-light">A lot and lots of text fits here</a></p>
					<div class="clear"></div>--%>
					<%--&nbsp;--%><!-- ENDS Link buttons -->
					
					
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
					<%--&nbsp;--%><!-- ENDS table --><%--&nbsp;--%>
				<!-- ENDS page-content -->
				
				

			<%--&nbsp;--%>
			<!-- ENDS content -->
			
			<%--&nbsp;--%><!-- Twitter -->
			<%--<div id="twitter">
				&nbsp;<a href="#" id="prev-tweet"></a>
				<a href="#" id="next-tweet"></a>
				&nbsp;<div id="tweets">
					<ul class="tweet_list"></ul>
				&nbsp;</div>
			</div>--%>
			<%--&nbsp;--%><!-- ENDS Twitter --><%--&nbsp;--%>
		<!-- ENDS MAIN -->   <%--סתם מיותר לי אבל לא רציתי למחוק--%>




                    
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            width: 242px;
            height: 222px;
        }
    </style>
    </asp:Content>


