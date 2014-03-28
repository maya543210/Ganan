<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Portfolio.aspx.cs" Inherits="Portfolio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript" src="js/jquery.quicksearch.js"></script>
    <script type="text/javascript"  src="js/eetv_tools.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

		<!-- MAIN -->
		<div id="main" dir="rtl">
			
			<!-- content -->
			<div id="content">
				
				<!-- title -->
				<div id="page-title">
					<span class="title">The Portfolio</span>
					<span class="subtitle">Donec eu libero sit amet quam egestas semper.</span>
				</div>
				<!-- ENDS title -->
				
                <!-- quicksearch -->
                    <form id="searchform" action="#">
                    <input type="text" name="search" value="" id="id_search" placeholder="חיפוש" />
                    </form>
				<!-- ENDS quicksearch -->

				<!-- filter -->
                <div id="menulist">
                    <ul class="filter">

                       <li></li>
                       <li> <a class="menu menu_active" id="all" href="#all.html">כל הפרוייקטים</a> </li>
                       <li> <a class="menu" id="BA" href="#BA.html">מנהל עסקים</a> </li>
                       <li> <a class="menu" id="IE" href="#IE.html">תעשייה וניהול</a> </li>
                    </ul>
                </div>

                    <%--Yaniv Commented out the Filter--%>
<%--				<ul class="filter">
					<li>Categories</li>
		    		<li><a href="#" > Webdesign </a></li>
		    		<li class="active"><a href="#PTO" > Photography </a></li>
		    		<li><a href="#" > Logo </a></li>
		    		<li><a href="#" > Marketing  </a></li>
		    		<li><a href="#" > Marketing </a></li>
		    		<li><a href="#" > Gaming </a></li>
		    		<li><a href="#" > Coding </a></li>
		    	</ul>
				<!-- ENDS filter -->--%>
                
				<!-- Portfolio -->
				<div id="projects-list">
					
                    <asp:PlaceHolder ID="placeholder_projects_list" runat="server"></asp:PlaceHolder>
					
                    <!-- project -->
					<div class="project">
						<h1><a href="#PTO">PTO Lorem ipsum dolor amet</a></h1>
						
						<!-- shadow -->
                        
						<div class="project-shadow">
							<!-- project-thumb -->
							<div class="project-thumbnail">
								
								<!-- meta -->
								<ul class="meta">
									<li><strong>Project date</strong> Dec 27th 2011 </li>
									<li><strong>Client</strong> IBM</li> 
									<li><strong>Visit website</strong> <a href="#">www.luiszuno.com</a></li>
								</ul>
								<!-- ENDS meta -->
								
								<a href="project.html" class="cover"><img src="img/dummies/438x267.gif"  alt="Feature image" /></a>
							</div>
							<!-- ENDS project-thumb -->
							
							<div class="the-excerpt">
								<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.Pellentesque habitant morbi tristique senectus et netus et malesuada fames, Pellentesque habitant morbi tristique senectus et netus et malesuada fames Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>
							</div>	
							<a href="project.html" class="read-more">View project</a>
						
						</div>
						<!-- ENDS shadow -->
					</div>
					<!-- ENDS project -->
					


				</div>
				<!-- ENDS Portfolio -->
				

				<!-- pagination -->	
				<div class="clear"></div>
				<ul class='pager'>
					<li class='first-page'><a href='#'>&laquo;</a></li>
					<li><a href='#' >&lsaquo;</a></li>
					<li><a href='#' >2</a></li>
					<li><a href='#' >3</a></li>
					<li class='active'><a href='#'>4</a></li>
					<li><a href='#' >5</a></li>
					<li><a href='#' >6</a></li>
					<li><a href='#' >&rsaquo;</a></li>
					<li class='last-page'><a href='#'>&raquo;</a></li>
				</ul>
				<!-- ENDS pagination -->

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

