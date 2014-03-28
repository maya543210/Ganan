using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class Portfolio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DBservicesY myDBservices = new DBservicesY(); 
        DataTable myDataTable = myDBservices.Get_Porflio_DB();
        DataToProject(myDataTable);
    }

    public void DataToProject(DataTable myDataTable)
    /*
                        <!-- project -->
                <div class="project"> OK
                    <h1><a href="project.html">Lorem ipsum dolor amet</a></h1>
						
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
     */
    {
        foreach (DataRow row in myDataTable.Rows) // Loop over the rows.
        {
            // Building controllers for matching the HTML Template.
            HtmlGenericControl div_project = new HtmlGenericControl("div");
            div_project.Attributes.Add("class", "project");
            HtmlGenericControl h1 = new HtmlGenericControl("h1");
            HtmlGenericControl a = new HtmlGenericControl("a");
            a.Attributes.Add("herf", "project.html");
            h1.InnerText = row.Field<string>("Name");
            HtmlGenericControl div_shadow = new HtmlGenericControl("div");
            div_shadow.Attributes.Add("class", "project-shadow");
            HtmlGenericControl div_thumbnail = new HtmlGenericControl("div");
            div_thumbnail.Attributes.Add("class", "project-thumbnail");
            HtmlGenericControl ul_meta = new HtmlGenericControl("ul");
            ul_meta.Attributes.Add("class", "meta");
            HtmlGenericControl li_meta = new HtmlGenericControl("li");
            HtmlGenericControl strong = new HtmlGenericControl("strong");
            strong.InnerText = "עיר:";
            li_meta.InnerText = row.Field<string>("City");
            HtmlGenericControl a_img = new HtmlGenericControl("a");
            a_img.Attributes.Add("herf", "project.html");
            a_img.Attributes.Add("class", "cover");
            HtmlGenericControl img = new HtmlGenericControl("img");
            img.Attributes.Add("src", row.Field<string>("LogoUrl"));
            img.Attributes.Add("alt", "Feature image");
            img.Attributes.Add("width", "438");
            img.Attributes.Add("height", "267");
            HtmlGenericControl div_the_excerpt = new HtmlGenericControl("div");
            div_the_excerpt.Attributes.Add("class", "the-excerpt");
            HtmlGenericControl p = new HtmlGenericControl("p");
            p.InnerText = row.Field<string>("Descs");
            HtmlGenericControl a_view = new HtmlGenericControl("a");
            a_view.Attributes.Add("herf", "project.html");
            a_view.Attributes.Add("class", "read-more");
            a_view.InnerText = "View project";

            // Adding HTML controls in order

            // setting the div-thumbnail
            li_meta.Controls.Add(strong);
            ul_meta.Controls.Add(li_meta);
            div_thumbnail.Controls.Add(ul_meta);
            a_img.Controls.Add(img);
            div_thumbnail.Controls.Add(a_img);

            // setting the div-the-excerpt
            div_the_excerpt.Controls.Add(p);

            // setting the project-shadow
            div_shadow.Controls.Add(div_thumbnail);
            div_shadow.Controls.Add(div_the_excerpt);
            div_shadow.Controls.Add(a_view);

            // setting the project
            div_project.Controls.Add(h1);
            div_project.Controls.Add(div_shadow);

            // place it in placeholder
            placeholder_projects_list.Controls.Add(div_project);

        }   
    
    }
}