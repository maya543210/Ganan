<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InsertGanan.aspx.cs" Inherits="_InsertGanan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<script src="jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script> <!--Remote Link-->

 <script type = "text/javascript">



 </script>

		<!-- MAIN -->
		<div id="main">
			
			<!-- content -->
			<div id="content">
				
				<!-- title -->
				<div id="page-title">
					<span class="title">הוספת גנן</span>
					<span class="subtitle">מאיה קידר</span>
				</div>
				<!-- ENDS title -->
				



                 <div class="one-column">
					<!-- form -->
					<h2></h2>
					<script type="text/javascript" src="js/form-validation.js"></script>
					<%--<form id="contactForm" action="InsertGanan.aspx"  method="post">--%>
						<fieldset>
							<div>

                            	<label>ח.פ.</label>
                                <asp:TextBox ID="TBcompanyCode" name="name" type="text" class="form-poshytip" title="שם חברת הגננים" runat="server"></asp:TextBox>
							
								<%--<input name="name"  id="name" type="text" class="form-poshytip" title="שם חברת הגננים" />--%>
							</div>
							<div>
								<label>טלפון</label>
                                <asp:TextBox ID="TBcompanyPhone1" name="email" type="text" class="form-poshytip" title="Enter your email address" runat="server"></asp:TextBox>
                                <asp:DropDownList ID="DDLcompanyPhone1" runat="server">
                                    <asp:ListItem>04</asp:ListItem>
                                    <asp:ListItem>09</asp:ListItem>
                                    <asp:ListItem>08</asp:ListItem>
                                    <asp:ListItem>06</asp:ListItem>
                                </asp:DropDownList>


								<%--<input name="email"  id="email" type="text" class="form-poshytip" title="Enter your email address" />--%>
							</div>
							<div>
								<label>כתובת החברה</label>
                                <asp:TextBox ID="TBcompanyAddress" name="web" type="text" class="form-poshytip" title="Enter your website" runat="server"></asp:TextBox>
								<%--<input name="web"  id="web" type="text" class="form-poshytip" title="Enter your website" />--%>
							</div>

							<div>
								<label>כתובת מייל</label>
                                <asp:TextBox ID="TBCompanyEmail" name="web" type="text" class="form-poshytip" title="Enter your website" runat="server"></asp:TextBox>
								<%--<input name="web"  id="web" type="text" class="form-poshytip" title="Enter your website" />--%>
							</div>

                             <div>
								<label>תיאור קצר של החברה</label>
                                <asp:TextBox ID="TBCompanyDescs" name="comments" type="text" class="form-poshytip" 
                                    title="Enter your comments" runat="server" Height="60px"></asp:TextBox>
								<%--<textarea  name="comments"  id="comments" rows="5" cols="20" class="form-poshytip" title="Enter your comments"></textarea>--%>
							</div>


                            <div>

                            	<label>שם החברה</label>
                                <asp:TextBox ID="TBcompanyName" name="name" type="text" class="form-poshytip" title="שם חברת הגננים" runat="server"></asp:TextBox>
							
								<%--<input name="name"  id="name" type="text" class="form-poshytip" title="שם חברת הגננים" />--%>
							</div>
							<div>
								<label>טלפון</label>
                                <asp:TextBox ID="TBcompanyPhone2" name="email" type="text" class="form-poshytip" title="Enter your email address" runat="server"></asp:TextBox>
                                <asp:DropDownList ID="DDLcompanyPhone2" runat="server">
                                    <asp:ListItem Text="04">04</asp:ListItem>
                                    <asp:ListItem Text="09">09</asp:ListItem>
                                    <asp:ListItem Text="08">08</asp:ListItem>
                                    <asp:ListItem Text="06">06</asp:ListItem>
                                </asp:DropDownList>
								<%--<input name="email"  id="email" type="text" class="form-poshytip" title="Enter your email address" />--%>
							</div>

                                                         <%--הועתק מלמעלה--%>
                            <div>
								<label>עיר </label>
                                <asp:TextBox ID="TBCompanyCity" name="web" type="text" class="form-poshytip" title="Enter your website" runat="server"></asp:TextBox>
								<%--<input name="web"  id="web" type="text" class="form-poshytip" title="Enter your website" />--%>
							</div>

                            <div>
                                 <asp:DropDownList ID="DDLcompanyServiceArea1" runat="server">
                                </asp:DropDownList>
                            
                            </div>

                             <div>
                                 <asp:DropDownList ID="DDLcompanyServiceArea2" runat="server">
                                </asp:DropDownList>
                            
                            </div>
 

                <%--           

							<!-- send mail configuration -->
							<input type="hidden" value="your_email@your_server.com" name="to" id="Hidden1" />
							<input type="hidden" value="youremail@luiszuno.com" name="from" id="Hidden2" />
							<input type="hidden" value="From torn wordpress online" name="subject" id="Hidden3" />
							<input type="hidden" value="send-mail.php" name="sendMailUrl" id="Hidden4" />
							<!-- ENDS send mail configuration -->
						--%>	
                            <p></p>
							
                          
                            שירותי גננים 
                            <asp:CheckBox ID="CBCompanyGanan" class="form-poshytip" runat="server" />
                                <br />
                             שירותי אדריכלים <asp:CheckBox ID="CBCompanyArch" class="form-poshytip" runat="server" />
                           תמונת לוגו
                            <asp:FileUpload ID="FUCompanyLogoUrl" runat="server" />
                            <br />
                            <asp:Label ID="Lerorr" runat="server" Text=""></asp:Label>
                            <br />
                            <asp:Label ID="StatusLabel" runat="server" Text="עוד לא עלה קובץ לשרת"></asp:Label>


<%--

							<!-- send mail configuration -->
							<input type="hidden" value="your_email@your_server.com" name="to" id="to" />
							<input type="hidden" value="youremail@luiszuno.com" name="from" id="from" />
							<input type="hidden" value="From torn wordpress online" name="subject" id="subject" />
							<input type="hidden" value="send-mail.php" name="sendMailUrl" id="sendMailUrl" />
							<!-- ENDS send mail configuration -->
						--%>	
                            <p></p>

                             <label>כל הפרטים המופיעים מטה הם פרטים אשר מילאתי ואני מאשר כי אין בהם חומר פוגע או אינו הולם</label>

                            <p></p>
							<p><asp:Button ID="Bsend" value="SEND" name="submit" runat="server" 
                                    Text="שלח פרטים" onclick="Bsend_Click" /></p>
                            <%--<p><input type="button" value="SEND" name="submit" id="submit" /></p>--%>
                    
						</fieldset>
						<p id="error" class="warning">Message</p>

                        <h4 class="line-divider">Bullet list</h4>

                        <fieldset>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                    <asp:Image ID="Image1" runat="server" />
                        </fieldset>

                       <p></p>

                    <label>כל הפרטים המופיעים מטה הם פרטים אשר מילאתי ואני מאשר כי אין בהם חומר פוגע או אינו הולם</label>

                  <p></p>




					<%--</form>--%>
					<p id="success" class="success">Thanks for your comments.</p>
                    <h4 class="line-divider">Bullet list</h4>
					<!-- ENDS form -->
				</div>
				<!-- ENDS column -->
				

              




















				<!-- page-content -->
				<div id="page-content">
					<h4 class="line-divider">Headers</h4>
					

				
					
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
					
					
				</div>
				<!-- ENDS page-content -->
				
				

			</div>
			<!-- ENDS content -->
			
			<!-- Twitter -->
			<div id="twitter">
				<a href="#" id="prev-tweet"></a>
				<a href="#" id="next-tweet"></a>
				<div id="tweets">
					<ul class="tweet_list"></ul>
				</div>
			</div>
			<!-- ENDS Twitter -->


		</div>
		<!-- ENDS MAIN -->


</asp:Content>

